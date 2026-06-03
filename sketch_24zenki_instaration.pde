boolean isKinect = true;
boolean isDebug = true;
boolean flag = false;
void setup() {
  fullScreen();

  setupText();
  setupMovie();
  if (isKinect) {
  setupKinect();
  }
}

void draw() {
  if (isKinect) {
    updateKinect();
  }
  int textNum;
  if (isKinect) {
    textNum = touchText(cx, cy);
  } else {
    textNum = touchText(mouseX, mouseY);
  }

  //println(textNum);
  if (flag)
    playMovie(textNum);

  background(255);
  drawText();
  drawMovie();
  if (isKinect && isDebug) {
    drawKinect();
  }
}

void keyPressed() {
  if (key == 'k') {
    isKinect = !isKinect;
  } else if (key == 'd') {
    isDebug = !isDebug;
  }
}
