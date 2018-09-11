int x = 300;
int y = 25;
int gravity = 1;
int terminalVelocity = 200;
int speed = 1;
void setup(){
  size(600, 500);
  frameRate(30);
}
void draw(){
  ball();
}
void ball(){
  ellipse(x, y, 50, 50);
  if(y < 500-50){
    y = y+speed;
    background(81);
    portal();
    strokeWeight(1);
    stroke(0);
    fill(255);
    ellipse(x, y, 50, 50);
    if(speed < terminalVelocity){
      speed = speed+gravity;
    }
  }else{
    teleport();
  }   
}
void teleport(){
  background(81);
  portal();
  y = 25;
}
void portal(){
  strokeWeight(4);
  stroke(#2182FC);
  fill(#2160FA);
  ellipse(300, 25, 100, 50);
  stroke(#FA4B28);
  fill(#FA282C);
  ellipse(300, 500-25, 100, 50);
}
  
  
