/*
Calculates the scale factor based on
- The canvas dimensions
- The print bounding box
- The canvas padding
*/
function calculateScaleFactor() {
  //Get the width and height of the print
  let printWidth = boundingBox.maxX - boundingBox.minX;
  let printHeight = boundingBox.maxY - boundingBox.minY;

  //Calculate the available width and height of the canvas after the padding is subtracted
  let availableWidth = canvasWidth - 2 * padding;
  let availableHeight = canvasHeight - 2 * padding;

  //If we are using WEBGL, instead of using canvas width and height we'll use a fixed size
  //and assume a normal web ratio of 16:9. We'll scale the values based on the ratio of the
  //canvas width and height
  if (renderer == WEBGL) {
    let baseRes = 720;

    let canvasRatio = canvasWidth / canvasHeight;

    availableWidth = baseRes * canvasRatio;
    availableHeight = baseRes / canvasRatio;
  }

  //Calculate the scale factor based on the print size and the canvas size
  let xScaleFactor = availableWidth / printWidth;
  let yScaleFactor = availableHeight / printHeight;

  console.log(
    availableWidth,
    availableHeight,
    printWidth,
    printHeight,
    xScaleFactor,
    yScaleFactor
  );

  //Return the smaller of the two scale factors to make sure it fits
  return Math.min(xScaleFactor, yScaleFactor);
}

/*
Calculates the X and Y offsets to that the print is centered on the canvas
*/
function calculateOffsets() {
  //Calculate the available width and height of the canvas after the padding is subtracted
  let availableWidth = canvasWidth - 2 * padding;
  let availableHeight = canvasHeight - 2 * padding;

  //Calculate the width and height of the print
  let printWidth = boundingBox.maxX - boundingBox.minX;
  let printHeight = boundingBox.maxY - boundingBox.minY;

  //The X offset is the padding plus the available width minus the scaled print width divided by 2
  let xOffset = padding + (availableWidth - printWidth * scaleFactor) / 2;
  //The Y offset is the padding plus the available height minus the scaled print height divided by 2
  let yOffset = padding + (availableHeight - printHeight * scaleFactor) / 2;

  //Return the offsets as an object

  return { xOffset, yOffset };
}

//Transform an XYZ vector to the canvas coordinate system based on the scale factor and the offsets
function transformPositionToCanvasCoordinates(vector) {
  result = vector.copy();

  //Start by subtracting the bounding box minimums
  result.x -= boundingBox.minX;
  result.y -= boundingBox.minY;

  //Scale the vector
  result.mult(scaleFactor);

  //Add the offsets
  result.x += xOffset;
  result.y += yOffset;

  //Flip the Y axis
  result.y = canvasHeight - result.y;

  //Expand the Z axis
  result.z *= zExpandSlider.value();

  //If this is webgl, subtract half of the canvas height and width because the origin is in the center of the canvas
  if (renderer == WEBGL) {
    result.x -= canvasWidth / 2;
    result.y -= canvasHeight / 2;
  }

  return result;
}
