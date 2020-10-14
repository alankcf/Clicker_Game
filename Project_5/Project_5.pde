import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Mode Variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;


//Pictures
PImage orca;
PImage bear;
PImage eagle;
boolean orcaOn;
boolean bearOn;
boolean eagleOn;

float x, y, d;
float vx, vy; // target velocity
int score, lives;
int highscore;
float size;

float slider;
PImage selectedPic;

PFont font;

//sound effects
Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  imageMode(CENTER);


  // target initilization
  x = width/2;
  y = height/2;
  d = 100;
  vx = random (-5, 5);
  vy = random (-5, 5);
  score = 0;
  lives = 3;
  slider = 500;
 

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario bros theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");

  //pics
  orca = loadImage("orca.png");
  orcaOn = true;
  bear = loadImage("bear.png");
  bearOn = false;
  eagle = loadImage("eagle.gif");
  eagleOn = false;

  selectedPic = orca;
  font = loadFont("Tahoma-Bold-48.vlw");
  textFont(font, 48);
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: mode = " + mode);
  }
}
