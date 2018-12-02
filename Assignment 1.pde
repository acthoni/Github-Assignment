float Bubble;

float UwU;

int Meme;

void setup(){
size (1600, 1400);

frameRate(45);

int Meme = max (44, 67);

Bubble = width/2;
Meme = 90;
println("Daniel Shiffman Videos helped with most of the coding");
println("I honestly punch random numbers into my coding and see if it works");
println(frameCount);
surface.setResizable(true);
}


void draw(){
  
  
Meme = (Meme + 1) % 225;
fill(Meme);
  fill(234);
  ellipse(Bubble, 360, 180, 180);


  
  Bubble = random(width);
  UwU = random(width);
  
  fill(266);
  ellipse(UwU, 720, 180, 180);
  
  float Bubble = constrain(80, 17, 20);
  
  
  fill(255);
  ellipse(mouseX, mouseY, 180, 120);
  
  fill(25);
  ellipse(Meme, 270, 70, 70);
  //Coding to move Bubble
  Bubble = Bubble + random(-2, 2);
UwU = UwU - 0.1;
Meme = Meme * 2;
}

void mousePressed(){
   background(Meme, 255,0);
   fill(0, millis()%256, 0, 0);
}
void keyPressed(){
  background (millis()%256, 0, 0);

}
