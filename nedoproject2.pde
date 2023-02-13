float turtleX;
float turtleY;
float turtleHeading = 0;

String axiom;
String tempS;



void setup() {
  size(700, 700);
  turtleX = width/2;
  turtleY = height/2;
  background(20);
  frameRate(1000);
  stroke(200);
  strokeWeight(10);
  axiom="F-G-G";
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
  
  


void draw() {


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
