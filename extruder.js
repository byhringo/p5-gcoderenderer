//This class pretends to be the 3D printer extruder, drawing with pixels instead of with plastic
class Extruder {
  /*
    x - starting X-position
    y - starting Y-position
    z - starting Z-position
    color - fairly obvious?
    thickness - thickness of the line drawn
    moveSpeed - the max speed in pixels/second the extruder can move
    */
  constructor(x, y, z, color) {
    this.position = createVector(x, y, z);
    this.shapes = [];
    this.currentShape = [];
  }

  //Clears the list of shapes and the current shape
  reset() {
    if (renderer == P2D) {
      background(bgColorPicker.value());
    } else {
      this.shapes = [];
      this.currentShape = [];
    }
  }

  /*
    Moves the extruder/nozzle towards a new position and draws a line along the way.
  
    x/y/z - the position to move towards
    time - how much time we have available to make the move in seconds
  
    Returns how much time was spend making the move, allowing the master loop to calculate how much time is left during this frame for other moves.
    */
  moveTowardsAndPrint(x, y, z, time) {
    //If either of the params are not defined, use the current position
    x = x || this.position.x;
    y = y || this.position.y;
    z = z || this.position.z;

    //Ignore the Z parameter if we are in 2D mode
    if (renderer == P2D) {
      z = 0;
    }

    //Copy the old position
    let oldPosition = this.position.copy();

    //Create a new vector representing the target of the move
    let target = createVector(x, y, z);

    //Create a new vector representing the direction to move in
    let direction = target.sub(oldPosition);

    //Calculate the remaining distance from the current position to the target
    let dist = direction.mag();

    //Scale the speed from the speedSlider exponentially so that the speed slider is more sensitive at lower speeds
    let speed = pow(speedSlider.value(), 10);

    //Scale the movement speed by the scale factor so equal length lines take the same amount of time
    let scaledSpeed = speed / scaleFactor;

    let remainingTime = 0;

    //If we will reach the point in this move operation...
    if (time > dist / scaledSpeed) {
      //Calculate how much time we will have after the move
      remainingTime = time - dist / scaledSpeed;
    }

    //Normalize the direction vector and multiply by the actual distance we will move
    direction.normalize();
    direction.mult(min(dist, scaledSpeed));

    //Add this movement vector to the extruders position
    this.position.add(direction);

    if (renderer == P2D) {
      //Draw a line from the old position to the new one
      stroke(this.color);
      strokeWeight(lineWidthSlider.value() * scaleFactor);

      //Transform the positions to canvas space
      let oldPositionCanvas = transformPositionToCanvasCoordinates(oldPosition);
      let newPositionCanvas = transformPositionToCanvasCoordinates(
        this.position
      );

      line(
        oldPositionCanvas.x,
        oldPositionCanvas.y,
        newPositionCanvas.x,
        newPositionCanvas.y
      );
    } else {
      //Add the new position to the current shape
      this.currentShape.push(this.position.copy());
    }

    //Return the time left after this move
    return remainingTime;
  }

  /*
    Instantly moves  the extruder/nozzle to a new position
  
    x/y/z - the position to move towards
    */
  moveTo(x, y, z) {
    //If either of the params are not defined, use the current position
    x = x || this.position.x;
    y = y || this.position.y;
    z = z || this.position.z;

    //Create a new vector representing the target of the move
    let target = createVector(x, y, z);

    this.position = target;

    //Add the current shape to the list of shapes and start a new one
    if (renderer == WEBGL) {
      this.shapes.push(this.currentShape);
      this.currentShape = [];
      this.currentShape.push(this.position.copy());
    }
  }

  //Only used when rendering with WEBGL
  drawShapes() {
    stroke(extruderColorPicker.value());
    noFill();
    strokeWeight(lineWidthSlider.value() * scaleFactor);

    //make an array containing all the completed shapes plus the current one
    let shapes = this.shapes.slice();
    shapes.push(this.currentShape);

    //Draw all the shapes
    for (let i = 0; i < shapes.length; i++) {
      let shape = shapes[i];

      /*
      //Draw the shape by creating a cylinder between each point
      for (let j = 0; j < shape.length - 1; j++) {
        let point1 = transformPositionToCanvasCoordinates(shape[j]);
        let point2 = transformPositionToCanvasCoordinates(shape[j + 1]);

        let distance = p5.Vector.dist(point1, point2);

        push();
        translate(point1.x, point1.y, point1.z);
        let angle = atan2(point2.y - point1.y, point2.x - point1.x);
        rotateZ(angle);
        cylinder(lineWidthSlider.value() * scaleFactor * 0.1, distance);
        pop();
      }
      */

      //Draw the shape
      beginShape();
      for (let j = 0; j < shape.length; j++) {
        let point = transformPositionToCanvasCoordinates(shape[j]);
        vertex(point.x, point.y, point.z);
      }
      endShape();
    }
  }
}
