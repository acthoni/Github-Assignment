Ball b;
void setup() {
  size(900, 600);
  b = new Ball();
}

void draw() {
  background(0);
  b.display();
  if (b.ballheight < 600){
    
  b.ballheight = b.calcHeight(5,b.ballheight);
  }
  else{
  b.ballheight = 30;
  }
 
 if (b.ballwidth < 900){
   b.ballwidth = b.calcWidth(5,b.ballwidth);
 }
 else{b.ballwidth = 30;
 }
 if (b.ballcolor < 255){
 b.ballcolor = b.calcColor(1,b.ballcolor);
 }
 else{b.ballcolor = 0;
 }
}
