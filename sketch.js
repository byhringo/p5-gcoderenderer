P5Capture.setDefaultOptions({
  format: "gif",
  framerate: 60,
  quality: 0.5,
  width: 320,
  disableUi: true,
});

let renderer;

//Some basic app variables we need
let canvasWidth, canvasHeight, fps;

//Default variables for UI elements
let defaultLineWidth = 0.6;
let defaultExtruderSpeed = 1.25;
let defaultBGColor;
let defaultInitialColor;

//Extruder variables
let extruder; //Extruder object drawing lines

let interpreter; //Interprets GCode instructions

let gcode; //Array of gcode instructions to be executed
let currentInstruction = 0; //Index of the current instruction being executed

let padding = 50;

let boundingBox; //Bounding box of the print
let scaleFactor = 1; //Scale factor of the print (based on the size of the print and the size of the canvas)
let xOffset = 0; //X offset of the print (based on the size of the print and the size of the canvas)
let yOffset = 0; //Y offset of the print (based on the size of the print and the size of the canvas)

function setup() {
  //Setup some basic app variables
  renderer = WEBGL;
  canvasWidth = windowWidth;
  canvasHeight = windowHeight;
  fps = 60;
  defaultBGColor = color(0);
  defaultInitialColor = color(255);

  createCanvas(canvasWidth, canvasHeight, renderer);
  frameRate(fps);

  //Setup the UI
  setupUI();

  //Setup cameras
  setupCameras();

  //Create the extruder and the interpreter
  extruder = new Extruder(0, 0, 0);
  interpreter = new GcodeInterpreter();

  //Make a nice background
  background(bgColorPicker.value());

  //Load the sample file
  loadStrings("gcode-samples/vulkazalogo.gcode", handleGCode);
}

function draw() {
  let timeRemaining = 1 / fps;

  //While we have gcode instructions to execute, execute one and if the return value is true (it was executed fully), execute another one until the return value becomes false (partial fulfillment)
  while (gcode && currentInstruction < gcode.length) {
    timeRemaining = interpreter.parseLine(
      gcode[currentInstruction],
      timeRemaining
    );

    if (timeRemaining > 0) {
      currentInstruction++;
    } else {
      break;
    }
  }

  //Draw all the shapes stored in the extruder object
  if (renderer == WEBGL) {
    lerpTowardsFixedCamera(1 / fps);
    //If the space key is pressed, rotate the camera
    if (keyIsDown(32)) {
      orbitControl();
    }
    background(bgColorPicker.value());

    extruder.drawShapes();
  }

  //Make any UI updates that are needed
  updateUI();
}

function handleGCode(lines) {
  //Reset the extruder
  extruder.reset();

  //Reset the instruction pointer
  currentInstruction = 0;

  //Get the list of currently supported instructions
  let supportedInstructions = Object.keys(interpreter.instructions);

  //Remove all unsupported lines
  lines = lines.filter((line) => {
    //Get the instruction from the line
    const [instruction] = line.split(" ");
    //Check if the instruction is supported
    return supportedInstructions.includes(instruction);
  });

  //Set the gcode to the filtered list of lines
  gcode = lines;

  //Calculate the bounding box of the print
  boundingBox = interpreter.calculateBoundingBox(gcode);

  //Calculate the scale factor
  scaleFactor = calculateScaleFactor();

  //Calculate the offsets
  let offsets = calculateOffsets();
  xOffset = offsets.xOffset;
  yOffset = offsets.yOffset;
}

/*
Keyboard controls:
If the R key is pressed, reset the extruder
If the H key is pressed and shift is held, hide the UI
1-6: different camera angles
*/
function keyPressed() {
  if (key == "r") {
    currentInstruction = 0;
    extruder.reset();
  } else if (parseInt(key) > 0 && parseInt(key) < fixedCameras.length + 1) {
    targetCameraAngle = parseInt(key) - 1;
  } else if (key == "h") {
    toggleUI();
  }
}
