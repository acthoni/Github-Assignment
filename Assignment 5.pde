import processing.video.*;
import processing.sound.*;
PinkNoise noise;
SoundFile b;
//I was going to use a song here, but couldn't since MP3 doesn't work
//SoundFile dimple;
PImage bts;
Capture video;
void setup(){
  size(800, 600);
  bts = loadImage("bts.jpg");
  //This code simply just turns on the web cam
  video = new Capture(this, 176, 144, 30);
  video.start();
  //This plays the noise/sound
  noise = new PinkNoise(this);
  noise.play();
  b = new SoundFile(this, "Baroque-a-Nova.wav");
  b.play();
  //dimple = new SoundFile(this, "Dimple.mp3");
  //dimple.play();
} 

void draw(){
  if (video.available()) {
    video.read();
  }
  background(0);
  image(bts, 100, 100, 600, 400);
  image(video, 0, 0);
  //This resized the image. That's it
    bts.resize(200, 100);
    image(bts, 100, 200);
  }  
