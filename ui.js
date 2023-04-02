//UI elements
let gcodeInput; //File input for GCode files
let speedSlider; //Slider for the extruder speed
let lineWidthSlider; //Slider for the line weight
let zExpandSlider; //Slider for the Z-axis expansion
let extruderColorPicker; //Color picker for the extruder color
let bgColorPicker; //Color picker for the background color
let exampleButtons; //Buttons for selecting example GCode files

//Labels
let gcodeInputLabel;
let speedSliderLabel;
let lineWidthSliderLabel;
let zExpandSliderLabel;
let extruderColorPickerLabel;
let bgColorPickerLabel;
let exampleLabel;
let instructionsLabel;

let uiPadding = 40; //Padding between the UI elements and the canvas
let controlSpacing = 20; //Spacing between the UI controls
let labelSpacing = 10; //Spacing between the UI labels and the controls

function setupUI() {
  // Create a file input for the GCode file
  gcodeInputLabel = createElement("label", "Upload GCode File:");
  gcodeInputLabel.position(16, 16);
  gcodeInputLabel.style("font-weight", "bold");
  gcodeInputLabel.style("font-size", "16px");
  gcodeInput = createFileInput(handleInputFile, false);
  gcodeInput.attribute("accept", ".gcode"); // Set accept attribute to .gcode files
  gcodeInput.position(16, 46);

  // Create a slider for the extruder speed
  speedSliderLabel = createElement("label", "Extruder Speed:");
  speedSliderLabel.position(16, 86);
  speedSliderLabel.style("font-weight", "bold");
  speedSliderLabel.style("font-size", "16px");
  speedSlider = createSlider(1, 3, defaultExtruderSpeed, 0);
  speedSlider.position(16, 116);

  // Create a slider for the line weight
  lineWidthSliderLabel = createElement("label", "Line Width:");
  lineWidthSliderLabel.position(16, 156);
  lineWidthSliderLabel.style("font-weight", "bold");
  lineWidthSliderLabel.style("font-size", "16px");
  lineWidthSlider = createSlider(0.1, 2, 0.4, 0);
  lineWidthSlider.position(16, 186);

  // Create a slider for the Z axis expansion
  zExpandSliderLabel = createElement("label", "Z Axis Expansion:");
  zExpandSliderLabel.position(16, 226);
  zExpandSliderLabel.style("font-weight", "bold");
  zExpandSliderLabel.style("font-size", "16px");
  zExpandSlider = createSlider(1, 100, 0, 0);
  zExpandSlider.position(16, 256);

  // Create a color picker for the extruder color
  extruderColorPickerLabel = createElement("label", "Extruder Color:");
  extruderColorPickerLabel.position(16, 296);
  extruderColorPickerLabel.style("font-weight", "bold");
  extruderColorPickerLabel.style("font-size", "16px");
  extruderColorPicker = createColorPicker(defaultInitialColor);
  extruderColorPicker.position(16, 326);

  // Create a color picker for the background color
  bgColorPickerLabel = createElement("label", "Background Color:");
  bgColorPickerLabel.position(16, 366);
  bgColorPickerLabel.style("font-weight", "bold");
  bgColorPickerLabel.style("font-size", "16px");
  bgColorPicker = createColorPicker(defaultBGColor);
  bgColorPicker.position(16, 396);

  //Add a label and 4 buttons in the bottom left of the canvas to select from 4 example gcode files
  exampleLabel = createElement("label", "Example GCode Files:");
  exampleLabel.position(16, canvasHeight - 80);
  exampleLabel.style("font-weight", "bold");
  exampleLabel.style("font-size", "16px");

  let exampleButton1 = createButton("Logo");
  exampleButton1.position(16, canvasHeight - 50);
  exampleButton1.mousePressed(() =>
    changeExample("gcode-samples/vulkazalogo.gcode")
  );

  let exampleButton2 = createButton("Flat Icon");
  exampleButton2.position(16 + 100, canvasHeight - 50);
  exampleButton2.mousePressed(() =>
    changeExample("gcode-samples/vulkazaicon.gcode")
  );

  let exampleButton3 = createButton("Vase");
  exampleButton3.position(16 + 200, canvasHeight - 50);
  exampleButton3.mousePressed(() => changeExample("gcode-samples/vase.gcode"));

  let exampleButton4 = createButton("Twisty thing");
  exampleButton4.position(16 + 300, canvasHeight - 50);
  exampleButton4.mousePressed(() => changeExample("gcode-samples/twist.gcode"));

  exampleButtons = [
    exampleButton1,
    exampleButton2,
    exampleButton3,
    exampleButton4,
  ];

  //Add some instructions to the top right of the canvas
  let instructions = "Keys 1-5 changes to set camera angles.<br>";
  instructions += "R to restart, H to hide UI.<br>";
  instructions += "Hold space to enable mouse camera control.<br>";

  instructionsLabel = createElement("div", instructions);
  instructionsLabel.position(canvasWidth - 366, 16);
  instructionsLabel.style("font-size", "16px");
  instructionsLabel.style("width", "350px");
}

function changeExample(filePath) {
  //Load the gcode
  loadStrings(filePath, handleGCode);
}

let uiHidden = false;

function toggleUI() {
  uiHidden = !uiHidden;
  if (uiHidden) {
    gcodeInputLabel.hide();
    speedSliderLabel.hide();
    lineWidthSliderLabel.hide();
    zExpandSliderLabel.hide();
    extruderColorPickerLabel.hide();
    bgColorPickerLabel.hide();
    exampleLabel.hide();
    instructionsLabel.hide();
    gcodeInput.hide();
    speedSlider.hide();
    lineWidthSlider.hide();
    zExpandSlider.hide();
    extruderColorPicker.hide();
    bgColorPicker.hide();
    startLabel.hide();
    startInput.hide();
    exampleButtons.forEach((button) => button.hide());
  } else {
    gcodeInputLabel.show();
    speedSliderLabel.show();
    lineWidthSliderLabel.show();
    zExpandSliderLabel.show();
    extruderColorPickerLabel.show();
    bgColorPickerLabel.show();
    exampleLabel.show();
    instructionsLabel.show();
    gcodeInput.show();
    speedSlider.show();
    lineWidthSlider.show();
    zExpandSlider.show();
    extruderColorPicker.show();
    bgColorPicker.show();
    exampleButtons.forEach((button) => button.hide());
  }
}

function updateUI() {
  // Set the text color based on the brightness of the background color
  let textColor = color(255);
  let bgColor = color(bgColorPicker.value());
  if (
    red(bgColor) * 0.299 + green(bgColor) * 0.587 + blue(bgColor) * 0.114 >
    127
  ) {
    textColor = color(0);
  }
  gcodeInputLabel.style("color", textColor);
  speedSliderLabel.style("color", textColor);
  lineWidthSliderLabel.style("color", textColor);
  zExpandSliderLabel.style("color", textColor);
  extruderColorPickerLabel.style("color", textColor);
  bgColorPickerLabel.style("color", textColor);
  exampleLabel.style("color", textColor);
  instructionsLabel.style("color", textColor);
}

//Validates that this is a .gcode file, decodes the B64 data and adds all the supported instructions to the list of instructions
function handleInputFile(file) {
  //Check if the filename ends with .gcode
  if (!file.name.endsWith(".gcode")) {
    console.warn("Invalid file type");
    return;
    //TODO: Show some error message to the user
  }

  //Strip down to pure B64 data
  let b64 = file.data.replace(/^data:.+;base64,/, "");
  //Decode the B64 data
  let decoded = atob(b64);

  //Split the decoded data into an array of lines
  let lines = decoded.split("\n");

  handleGCode(lines);
}
