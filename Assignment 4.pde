PImage nogla;

float rotx = PI/4;
float roty = PI/4;
float cameraX = width/2;
float cameraY = height/2;

void setup(){
 size(640,380,P3D);
 nogla = loadImage("nogla.png");
 textureMode(NORMAL);
 fill(255);
 stroke(color(44,48,32));
}

void draw(){
 background(0);
 camera(mouseX,35,250,mouseX,height/2,0,0,1,0);
 translate(width/4, height/4,0);
 stroke(255,0,0);

//This code is all the 3D models minus the cube
 
 fill(255);
 box(80,60,40);
 noStroke();
  translate(width/2, height/2,0);
  fill(255,0,0);
 sphere(50);
 pointLight(255,255,0,640,380,100);
 directionalLight(255,255,255,0,380,100);
 translate(-width/4, -height/4, -100);
 rotateX(PI/4);
 rotateY(PI/4);
 scale(90);
 NoglaCube(nogla);
 

}

void NoglaCube(PImage nog){
 beginShape(QUADS);
 texture(nog);
 
//This is all the code to make the cube
 
 // +Z "front" face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y "bottom" face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X "right" face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

 endShape();
}

void mouseDragged() {
  float rate = 0.01;
  cameraX += (pmouseY-mouseY) * rate;
  cameraY += (mouseX-pmouseX) * rate;
//Here are some of my referancer
//https://processing.org/examples/texturecube.html
//https://processing.org/tutorials/p3d/
}
  
  
