void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
  controlSlider();

  animalbuttons();
  //animal buttons
  //image(orca, 100, 200, 150, 150);
}

void mouseDragged () {
  controlSlider();
}
