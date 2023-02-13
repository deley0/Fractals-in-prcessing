float turtleX;
float turtleY;
float turtleHeading = 0;
String axiom;
String tempS;
float e;
float x;
float y;
float zoom=1;
boolean mouseReleased;
button menu = new button();
button quit = new button();
button back = new button();
button tr = new button();
button koha = new button();
button kv = new button();
button drago = new button();
button back2 = new button();
int part;
void setup() {
  //size(700, 700);
  fullScreen();
  //turtleX = width/2;
 // turtleY = height/2;
  background(20);
  frameRate(1000);
  stroke(200);
  strokeWeight(10);
  
  //rectMode(CENTER);
menu.sizeX=width/2;
menu.sizeY=height/4;
menu.x=width/2-menu.sizeX/2;
menu.y=height/4-menu.sizeY/2;

quit.sizeX=width/2;
quit.sizeY=height/4;
quit.x=width/2-menu.sizeX/2;
quit.y=height/1.5-menu.sizeY/2;

back.sizeX=width/8;
back.sizeY=width/8;
back.x=width/20;
back.y=height-height/3;

back2.sizeX=width/8;
back2.sizeY=width/8;
back2.x=width/20;
back2.y=height-height/3;

tr.sizeX=width/2;
tr.sizeY=height/8;
tr.x=width/2-tr.sizeX/2;
tr.y=height/4-tr.sizeY/2;

koha.sizeX=width/2;
koha.sizeY=height/8;
koha.x=width/2-koha.sizeX/2;
koha.y=height/2.5-koha.sizeY/2;

kv.sizeX=width/2;
kv.sizeY=height/8;
kv.x=width/2-kv.sizeX/2;
kv.y=height/1.8-kv.sizeY/2;

drago.sizeX=width/2;
drago.sizeY=height/8;
drago.x=width/2-drago.sizeX/2;
drago.y=height/1.4-drago.sizeY/2;

//turtleX = width/2;
//  turtleY = height/2;
//  axiom="F-G-G";
//  tempS="";
//создание команд л системы
//  for (int i2 = 0; i2 <=3; i2 = i2+1) {
//   for (int i = 0; i <axiom.length(); i = i+1) {
//   if(axiom.charAt(i)=='+'){
//     tempS=tempS+"+";
//   }
//   if(axiom.charAt(i)=='-'){
//     tempS=tempS+"-";
//   }
//   if(axiom.charAt(i)=='F'){
//     tempS=tempS+"F-G+F+G-F";
//   }
//   if(axiom.charAt(i)=='G'){
//     tempS=tempS+"GG";
//   }
//   }
//   axiom=tempS;
//   tempS="";
//   print(axiom);







//turtleX=150;
//turtleY=600;







//}







}
  
  


void draw() {
  background(1);
  
  if(part>1 & part<6){
  back2.hide();
  back2.on();
  
   fill(255);
      textSize(width/30);
  text("НАЗАД",back.x+back.sizeX/10,back.y+back.sizeY/1.7);
   if(back2.click){
  part=0;
  x=100;
  y=100;
  }
  }
 
  
  if(part==5){
    turtleHeading=0;
turtleX=100;
turtleY=100;
translate(width/2,height/2);
scale(zoom);
translate(x,y);
if(e<=-1){
zoom*=1.1;
}
if(e>=1){
zoom/=1.1;
}
  for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     rotateTurtle(90);
   }
   if(axiom.charAt(i)=='-'){
     rotateTurtle(-90);
   }
   if(axiom.charAt(i)=='X'){
     forward(25);
   }
   if(axiom.charAt(i)=='Y'){
     forward(25);
   }

   }
  }
  
     if(part==4){
    turtleHeading=0;
turtleX=100;
turtleY=100;
translate(width/2,height/2);
scale(zoom);
translate(x,y);
if(e<=-1){
zoom*=1.1;
}
if(e>=1 ){
zoom/=1.1;
}

  for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     rotateTurtle(90);
   }
   if(axiom.charAt(i)=='-'){
     rotateTurtle(-90);
   }
   if(axiom.charAt(i)=='F'){
     forward(25);
   }

   }
  }
  
   if(part==3){
    turtleHeading=0;
turtleX=100;
turtleY=100;
translate(width/2,height/2);
scale(zoom);
translate(x,y);
if(e<=-1){
zoom*=1.1;
}
if(e>=1){
zoom/=1.1;
}
  for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     rotateTurtle(60);
   }
   if(axiom.charAt(i)=='-'){
     rotateTurtle(-60);
   }
   if(axiom.charAt(i)=='F'){
     forward(25);
   }
if(axiom.charAt(i)=='G'){
     forward(25);
   }
   }
  }
  
  if(part==2){
    turtleHeading=0;
turtleX=100;
turtleY=100;
translate(width/2,height/2);
scale(zoom);
translate(x,y);
if(e<=-1){
zoom*=1.1;
}
if(e>=1){
zoom/=1.1;
}
  for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     rotateTurtle(120);
   }
   if(axiom.charAt(i)=='-'){
     rotateTurtle(-120);
   }
   if(axiom.charAt(i)=='F'){
     forward(25);
   }
if(axiom.charAt(i)=='G'){
     forward(25);
   }
   }
  }
  
  if(part==1){

  drago.hide();
  drago.on();
  drago.anim();
  

  kv.hide();
  kv.on();
  kv.anim();
  

  koha.hide();
  koha.on();
  koha.anim();
  

  tr.hide();
  tr.on();
  tr.anim();
  
  back.hide();
  back.on();
  back.anim();
     fill(255);
      textSize(width/30);
  text("НАЗАД",back.x+back.sizeX/10,back.y+back.sizeY/1.7);
  
   fill(255);
      textSize(width/40);
  text("Треугольник Серпинского",tr.x+tr.sizeX/10,tr.y+tr.sizeY/1.7);
  text("Кривая Коха",koha.x+koha.sizeX/10,koha.y+koha.sizeY/1.7);
  text("Плитка",kv.x+kv.sizeX/10,kv.y+kv.sizeY/1.7);
  text("Кривая Дракона",drago.x+drago.sizeX/10,drago.y+drago.sizeY/1.7);
  if(tr.click){
  part=2;
  
  turtleX = width/2;
  turtleY = height/2;
  axiom="F-G-G";
  tempS="";
//создание команд л системы
  for (int i2 = 0; i2 <=6; i2 = i2+1) {
   for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     tempS=tempS+"+";
   }
   if(axiom.charAt(i)=='-'){
     tempS=tempS+"-";
   }
   if(axiom.charAt(i)=='F'){
     tempS=tempS+"F-G+F+G-F";
   }
   if(axiom.charAt(i)=='G'){
     tempS=tempS+"GG";
   }
   }
   axiom=tempS;
   tempS="";
   print(axiom);
turtleX=150;
turtleY=600;
}
  }
  if(koha.click){
  part=3;
   turtleX = width/2;
  turtleY = height/2;
  axiom="F--F--F";
  tempS="";
//создание команд л системы
  for (int i2 = 0; i2 <=3; i2 = i2+1) {
   for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     tempS=tempS+"+";
   }
   if(axiom.charAt(i)=='-'){
     tempS=tempS+"-";
   }
   if(axiom.charAt(i)=='F'){
     tempS=tempS+"F+F--F+F";
   }
   if(axiom.charAt(i)=='G'){
     tempS=tempS+"GG";
   }
   }
   axiom=tempS;
   tempS="";
   print(axiom);
turtleX=150;
turtleY=600;
}

  }
  if(kv.click){
  part=4;
  turtleX = width/2;
  turtleY = height/2;
  axiom="F+F+F+F";
  tempS="";
//создание команд л системы
  for (int i2 = 0; i2 <=3; i2 = i2+1) {
   for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     tempS=tempS+"+";
   }
   if(axiom.charAt(i)=='-'){
     tempS=tempS+"-";
   }
   if(axiom.charAt(i)=='F'){
     tempS=tempS+"FF+F-F+F+FF";
   }
  
   }
   axiom=tempS;
   tempS="";
   print(axiom);
turtleX=150;
turtleY=600;
}
  }
  if(drago.click){
  part=5;
  turtleX = width/2;
  turtleY = height/2;
  axiom="FX";
  tempS="";
//создание команд л системы
  for (int i2 = 0; i2 <=13; i2 = i2+1) {
   for (int i = 0; i <axiom.length(); i = i+1) {
   if(axiom.charAt(i)=='+'){
     tempS=tempS+"+";
   }
   if(axiom.charAt(i)=='-'){
     tempS=tempS+"-";
   }
   if(axiom.charAt(i)=='X'){
     tempS=tempS+"X+YF+";
   }
   if(axiom.charAt(i)=='Y'){
     tempS=tempS+"-FX-Y";
   }
  
   }
   axiom=tempS;
   tempS="";
   print(axiom);
turtleX=150;
turtleY=600;
}
  }
  
  if(back.click){
  part=0;
  }
  }
  if(part==0){
  menu.hide();
  menu.on();
  menu.anim();
  quit.hide();
  quit.on();
  quit.anim();
  fill(255);
  textSize(width/15);
  text("фракталы",menu.x+width/15*1.5,menu.y+menu.sizeY/1.7);
  text("выход",quit.x+width/15*2.3,quit.y+quit.sizeY/1.7);
  if(menu.click){
  part=1;
  }
  if(quit.click){
  exit();
  }}
  





e=0;
mouseReleased=false;
}
void mouseReleased(){
mouseReleased=true;
}
void mouseWheel(MouseEvent event){
e=event.getCount();
}
void keyPressed() {
if(key=='w' | key=='W' | key=='ц' | key=='Ц' | keyCode==UP ){
  y+=50;
}
if(key=='s' | key=='S' | key=='ы' | key=='Ы' | keyCode==DOWN){
  y-=50;
}
if(key=='a' | key=='A' | key=='ф' | key=='Ф' | keyCode==LEFT){
  x+=50;
}
if(key=='d' | key=='D' | key=='в' | key=='В' | keyCode==RIGHT){
  x-=50;
}
if( key=='q' | key=='Q' | key=='й' | key=='Й'){
zoom/=1.1;
}
if( key=='e' | key=='E' | key=='у' | key=='У'){
zoom*=1.1;
}
}
void forward(float amount) {
  
  float newX = turtleX + cos(radians(turtleHeading)) * amount;
  float newY = turtleY + sin(radians(turtleHeading)) * amount;

  line(turtleX, turtleY, newX, newY);
  fill(0);
  
  turtleX = newX;
  turtleY = newY;
}

void rotateTurtle(float degrees) {
  turtleHeading += degrees;
}

class button{
float x;
float y;
float sizeX;
float sizeY;
float rounding;

float r;
float g;
float b;

boolean aiming;
boolean click;

boolean left;
boolean right;
boolean up;
boolean down;
void hide(){
  fill(r,g,b);
rect(x,y,sizeX,sizeY,rounding);
}
void on(){
if(mouseX>x+sizeX){
right=true;
}
else{
  right=false;
}

if(mouseX<x){
left=true;
}
else{
  left=false;
}

if(mouseY<y){
up=true;
}
else{
  up=false;
}


if(mouseY>y+sizeY){
down=true;
}
else{
  down=false;
}

if(up==false & down==false & left==false & right==false){
aiming=true;
}
else{
  aiming=false;
}
if(aiming & mouseReleased){
click=true;
}
else{
  click=false;
}
}
void anim(){
  r=44;
  g=44;
  b=44;
if(aiming){
  r=100;
  g=100;
  b=100;
}
if(aiming & mousePressed){
  r=150;
  g=150;
  b=150;
}
}
}
