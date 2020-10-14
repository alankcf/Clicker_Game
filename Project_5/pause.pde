void pause () {
  //background(0);
  theme.pause();
  fill(0);
  textSize(30);
  text("PAUSED", 400, 400);
  
}

void pauseClicks() {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
    rect(115, 75, 2, 50);
    rect(80, 75, 2, 50);
    //theme.rewind();
    theme.play();
  }
}
