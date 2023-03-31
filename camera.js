let fixedCameras = [];
let targetCameraAngle;

let cam;

function setupCameras() {
  //Set up 5 different cameras pointing at 0,0,0 from different angles: Front, Upper Left, Upper Right, Lower Left, Lower Right
  let newFixedCamera;

  //Front
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(0, 0, 750);
  newFixedCamera.lookAt(0, 0, 0);
  fixedCameras.push(newFixedCamera);

  //From the side, and slightly above
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(0, 750, 450);
  newFixedCamera.lookAt(0, 0, 100);
  fixedCameras.push(newFixedCamera);

  //Upper Right
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(750, -750, 2000);
  newFixedCamera.lookAt(0, 0, 100);
  fixedCameras.push(newFixedCamera);

  //Lower Right
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(750, 750, 2000);
  newFixedCamera.lookAt(0, 0, 100);
  fixedCameras.push(newFixedCamera);

  //Lower Left
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(-750, 750, 2000);
  newFixedCamera.lookAt(0, 0, 100);
  fixedCameras.push(newFixedCamera);

  //Upper Left
  newFixedCamera = createCamera();
  newFixedCamera.setPosition(-750, -750, 2000);
  newFixedCamera.lookAt(0, 0, 100);
  fixedCameras.push(newFixedCamera);

  //Set up a camera that can be moved around
  cam = createCamera();
  cam.setPosition(0, 0, 750);
  cam.lookAt(0, 0, 0);
  setCamera(cam);

  //Set the current target camera angle that we should LERP towards
  targetCameraAngle = null;
}

let lerpSpeed = 10;

//Moves the current camera towards one of the fixed camera positions
function lerpTowardsFixedCamera(time) {
  //If the target camera angle is not set, do nothing
  if (targetCameraAngle == null) {
    return;
  }

  //Get the current camera position
  let currentCameraPosition = createVector(cam.eyeX, cam.eyeY, cam.eyeZ);

  //Get the target camera position
  let targetCameraPosition = createVector(
    fixedCameras[targetCameraAngle].eyeX,
    fixedCameras[targetCameraAngle].eyeY,
    fixedCameras[targetCameraAngle].eyeZ
  );

  //Lerp towards the target camera position
  let newCameraPosition = p5.Vector.lerp(
    currentCameraPosition,
    targetCameraPosition,
    lerpSpeed * time
  );

  //Set the new camera position
  cam.setPosition(
    newCameraPosition.x,
    newCameraPosition.y,
    newCameraPosition.z
  );

  //Get the target cameras lookAt position
  let targetCameraLookAtPosition = createVector(
    fixedCameras[targetCameraAngle].centerX,
    fixedCameras[targetCameraAngle].centerY,
    fixedCameras[targetCameraAngle].centerZ
  );

  //Look at the cameras target
  cam.lookAt(
    targetCameraLookAtPosition.x,
    targetCameraLookAtPosition.y,
    targetCameraLookAtPosition.z
  );

  //If the camera is close enough to the target, stop lerping
  if (p5.Vector.dist(currentCameraPosition, targetCameraPosition) < 5) {
    targetCameraAngle = null;
  }
}
