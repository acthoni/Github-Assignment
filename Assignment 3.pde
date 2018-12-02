import processing.pdf.*;
String[] Words; 
float x = 100;
float y = 350;
PFont myFont;
PFont myFont2;
void setup(){
  size(800, 500);
  background(0);
  textSize(20);
  //This line of code loads in the "Go Big Red" phrase from the notepad
  Words = loadStrings("something like that.txt");
  //noLoop();
  myFont = createFont("Comic Sans MS", 32);
  myFont2 = createFont("Matura MT Script Capitals", 32);
  text("press P to save as PDF", 50, 450);
  //Part of the coding to save as a PDF
  beginRecord(PDF, "poster.pdf");
}
void draw(){
  //rectMode(CENTER);
  //rect(50, 50, 200, 150);
  //fill(0);
  textFont(myFont);
  textAlign(RIGHT, CENTER);
  //Pressing the mouse will change the color of the phrase from yellow to green
  if (mousePressed == true){
   fill(0, 128, 0); 
  }
  else {
  fill(255, 255, 0);}
  text("Go", 100, 30);
  textAlign(CENTER, CENTER);
  text("Pack", 100, 100);
  textAlign(LEFT, CENTER);
  text("Go", 100, 170);
  if (mousePressed == true){
   fill(255, 255, 255); 
  }
  else {
  fill(255, 0, 0);}
  textFont(myFont2);
  for (int i = 0; i < Words.length; i++){
   text(Words[i],x,y);
   if (x < 300){
   x = x + 100;}
   else{
    x = 100; 
   }
  }
  
}
//This is what saves the code as a PDF when you press the key
void keyPressed(){
 if ( key =='p'){
   endRecord();
   exit();}
}
