void intro () {
  //theme.rewind();
  gameover.pause();
  theme.play();
  
  background(250, 230, 5);
  fill(255);
  tactile();
  rect(150, 500, 200, 100);
  tactile2();
  rect(450, 500, 200, 100);
  fill(0);
  textSize(95);
  text("Clicker Game", 400, 100);
  textSize(50);
  text("Start", 250, 550);
  textSize(45);
  text("Options", 550, 550);
} 

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  } if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
  }
}

void tactile() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
}
void tactile2() {
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  
}
