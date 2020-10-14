void gameover () {
  background(255, 0, 0);
  textSize(95);
  fill(0);
  text("GAME OVER", 400, 300, 100);
  theme.pause();
  gameover.play();

  if (score > highscore) {
    highscore = score;
  } 
  textSize(75);
  text("High Score: " + highscore, 400, 500, 80);
  tactileQuit();
  fill(255);
  rect(550, 650, 200, 100);
  fill(0);
  textSize(40);
  text("Quit", 650, 700);
}


void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
  score = 0;
  lives = 3; 
  if (mouseX > 550 && mouseX < 750 && mouseY > 650 && mouseY < 750) {
    exit();
  }
}

void tactileQuit() {
  if (mouseX > 550 && mouseX < 750 && mouseY > 650 && mouseY < 750) {
    strokeWeight(5);
  } else {
    strokeWeight(3);
  }
}
