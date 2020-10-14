void game () {
  background(0, 255, 0);
  gameover.pause();
  fill(0);
  textSize(30);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);

  //pause button
  stroke(0);
  strokeWeight(2);
  fill(255);
  circle(100, 100, 100);
  fill(0);
  //textSize(20);
  //text("PAUSE", 100, 100);
  strokeWeight(2);
  rect(115, 75, 2, 50);
  rect(80, 75, 2, 50);

  if (mode == GAME) {
    size = d;
  }
  // display target
  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, size);
  image(selectedPic, x, y, d-15, d-15);



  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-(d/2)) {
    vx = vx * -1;
  }
  if (y < (d/2) || y > height-(d/2)) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (mouseX > x-(d/2) && mouseX < x+(d/2) && mouseY > y-(d/2) && mouseY < y+(d/2)) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = PAUSE;
    fill(255);
    stroke(255);
    rect(115, 75, 2, 50);
    rect(80, 75, 2, 50);
    fill(0);
    triangle(80, 75, 80, 125, 125, 100);
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    //background(255, 0, 0);
    if (lives == 0) {
      mode = GAMEOVER;

      gameover.rewind();
    }
  }
}
