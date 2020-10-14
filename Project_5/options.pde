void options() {
  background(220);
  textSize(85);
  fill(0);
  text("OPTIONS", 400, 75, 100);
  
  // Back to Intro
  tactile3();
  fill(255);
  rect(550, 600, 200, 100);
  textSize(40);
  fill(0);
  text("BACK", 650, 650);
  
  // Picture options
  fill(255);
  strokeWeight(2);
  tactilerect();
  rect(100, 200, 150, 150);
  image(orca, 175, 275, 150, 150);
  tactilerect2();
  rect(325, 200, 150, 150);
  image(bear, 400, 275, 150, 150);
  tactilerect3();
  rect(550, 200, 150, 150);
  image(eagle, 625, 275, 145, 145);
  
  // slider 
  strokeWeight(2);
  line (200, 420, 200, 570);
  fill(255);
  circle(200, slider, 40);
  // indicator
  circle(400, 500, d);
  
  if (orcaOn == true) {
    image(orca, 400, 500, d-25, d-25);
    if (mode == GAME) {
      image(orca, 400, 500, d-25, d-25);
    }
  }
  if (eagleOn == true) {
    image(eagle, 400, 500, d-25, d-25);
    if (mode == GAME) {
      image(eagle, 400, 500, d-25, d-25);
    }
  }
  if (bearOn == true) {
    image(bear, 400, 500, d-25, d-25);
    if (mode == GAME) {
      image(bear, 400, 500, d-25, d-25);
    }
  }
  //default
  if (bearOn == false && orcaOn == false && eagleOn == false) {
    image(orca, 400, 500, d-25, d-25);
  }
  
}

void controlSlider() {

  if (mouseX > 160 && mouseX < 240 && mouseY > 420 && mouseY < 570) {
    slider = mouseY;
    d = (mouseY - 390);
  }
}
void optionsClicks() {
  if (mouseX > 550 && mouseX < 750 && mouseY > 600 && mouseY < 700) {
    mode = INTRO;
  }
  
}
void tactile3 () {
  if (mouseX > 550 && mouseX < 750 && mouseY > 600 && mouseY < 700) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
}
  
  void animalbuttons() {
    if (mouseX > 100 && mouseX < 250 && mouseY > 200 && mouseY < 350) {
    orcaOn = !orcaOn;
    eagleOn = false;
    bearOn = false;
    if (mode == OPTIONS) {
      selectedPic = orca;
    } else {
      
  }
  }
  //image(bear, 325, 200, 150, 150);
  if (mouseX > 325 && mouseX < 475 && mouseY > 200 && mouseY < 350) {
    bearOn = !bearOn;
    eagleOn = false;
    orcaOn = false;
    if (mode == OPTIONS) {
      selectedPic = bear;
    } else {
      
  }
  }
  //image(eagle, 550, 200, 150, 150);
  if (mouseX > 550 && mouseX < 700 && mouseY > 200 && mouseY < 350) {
    eagleOn = !eagleOn;
    orcaOn = false;
    bearOn = false;
    if (mode == OPTIONS) {
      selectedPic = eagle;
    } else {
      
  }
  }
  
}

void tactilerect() {
  if (mouseX > 100 && mouseX < 250 && mouseY > 200 && mouseY < 350) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  //rect(100, 200, 150, 150)
}
void tactilerect2() {
  if (mouseX > 325 && mouseX < 475 && mouseY > 200 && mouseY < 350) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  //rect(325, 200, 150, 150);
}

void tactilerect3 () {
  if (mouseX > 550 && mouseX < 700 && mouseY > 200 && mouseY < 350) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }
  //rect(550, 200, 150, 150);
}
