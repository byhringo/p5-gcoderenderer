class GcodeInterpreter {
  constructor() {
    //A list of supported instructions
    //All instructions should be in the form of:
    //  instruction: (params, time) => { ... }
    //Where params is an array of parameters for the instruction
    //And time is the time in seconds this instruction has available to execute
    //And should return a positive value if the instruction was executed to completion
    //And 0
    this.instructions = {
      G0: (params, time) => {
        return this.instructions.G1(params, time);
      },
      G1: (params, time) => {
        //Get the X, Y, Z and E parameters
        let x = params.find((param) => param.startsWith("X"));
        let y = params.find((param) => param.startsWith("Y"));
        let z = params.find((param) => param.startsWith("Z"));
        let e = params.find((param) => param.startsWith("E"));

        //Get the X, Y and Z values (if they exist)
        x = x && parseFloat(x.substring(1));
        y = y && parseFloat(y.substring(1));
        z = z && parseFloat(z.substring(1));
        e = e && parseFloat(e.substring(1));

        //If this G1 has a positive E parameter (and at least 1 coordinate), extrude
        if (e && e > 0 && (x || y || z)) {
          //Move the extruder towards the point
          let timeLeft = extruder.moveTowardsAndPrint(x, y, z, time);
          return timeLeft;
        }
        //If not, just move the nozzle directly to the target
        else if (x || y || z) {
          extruder.moveTo(x, y, z);
          return time;
        }
        //If there are no coordinates, just return true
        else {
          return time;
        }
      },
    };
  }

  //Parses a line of GCode and executes the corresponding instruction
  parseLine(line, time) {
    //Remove all comments from the line
    line = line.replace(/;.*/, "");

    //Split the line into an array of words
    const [instruction, ...params] = line.split(" ");

    //Execute the instruction if it is supported
    if (this.instructions[instruction]) {
      return this.instructions[instruction](params, time);
    } else {
      console.warn(`Instruction ${instruction} not supported`);
    }
  }

  //Calculates the 2D bounding box of the print based on the X, and Y coordinates
  calculateBoundingBox(gcode) {
    //Get the X and Y coordinates from each line, see if they are the highest or lowest values
    let minX = Infinity;
    let minY = Infinity;
    let maxX = -Infinity;
    let maxY = -Infinity;

    //Loop through all the lines
    for (let line of gcode) {
      //Remove all comments from the line
      line = line.replace(/;.*/, "");

      //Split the line into an array of words
      const [instruction, ...params] = line.split(" ");

      //Get the X, Y, Z and E parameters
      let x = params.find((param) => param.startsWith("X"));
      let y = params.find((param) => param.startsWith("Y"));
      let e = params.find((param) => param.startsWith("E"));

      //If there is no E, this is not an extrusion move and we can ignore it as it won't affect the bounding box
      if (!e) continue;

      //If this line has an X parameter, update the bounding box
      if (x) {
        //Get the X value
        x = parseFloat(x.substring(1));

        //Update the bounding box
        minX = Math.min(minX, x);
        maxX = Math.max(maxX, x);
      }
      //Do the same for Y
      if (y) {
        //Get the Y value
        y = parseFloat(y.substring(1));

        //Update the bounding box
        minY = Math.min(minY, y);
        maxY = Math.max(maxY, y);
      }
    }

    //Return the bounding box
    return {
      minX,
      minY,
      maxX,
      maxY,
    };
  }
}
