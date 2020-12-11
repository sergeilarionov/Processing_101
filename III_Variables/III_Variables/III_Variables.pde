/**********************************
 Processing 101: Variables
 **********************************
 
 Instead of repeating values in multiple places in your code, variales can help you store and modify values in one place.  
 Varibles need to be declaired outside of the all functions and at the top of the sketch.
 Variables can be assigned a value at declaration or later in setup() or draw().
 It's a good practice to assign descriptive names to your variables using camel casing (e.g shapeWidth or shapeW for shortness)
 In Java (Processing is based on Java), all variables need to have an explicit data type describing the tyope of data that it's meant to hold:
 
 int        : Integer, whole number (e.g 1,2,3)
 float      : Floating-point number, decimals (e.g 1.1,1.2,1.3)
 String     : Text (e.g "Hello World")
 char       : Single character (e.g 'c' or "!')
 boolean    : Stores True or False values
 
 **********************************/

// General
int canvasW = 1000;
int canvasH = 1000;
color faceColor = 255; // White
color backgroundColor = 0; // Black

// Face
int faceStroke = 3;
int headW = 250;
int headH = 250;
int eyeW = 60;
int eyeH = 60;
int irisW = 20;
int irisH = 20;
int toothW = 45;
int toothH = 20;

int posX, posY; // Values are assigned in setup() after the canvas width has been assigned

void setup() {

  size(1000, 1000);
  posX = width/2;
  posY = height/2;
}

void draw() {

  background(backgroundColor);
  stroke(faceColor);
  strokeWeight(faceStroke);

  // Head
  fill(0);
  ellipse(posX, posY, headW, headH);

  // Eyes
  fill(255);
  ellipse(posX - 50, posY - 40, eyeW, eyeH); // Left eye
  fill(0);
  ellipse(posX - 50, posY - 30, irisW, irisH); // Left iris
  fill(255);
  ellipse(posX + 50, posY - 40, eyeW, eyeH); // Right eye
  fill(0);
  ellipse(posX + 50, posY - 50, irisW, irisH); // Right iris

  // Mouth
  line(posX - 70, posY + 50, posX + 70, posY + 50);
  fill(255);
  noStroke();
  rect (posX - 50, posY + 50, toothW, toothH);
  rect (posX + 5, posY + 50, toothW, toothH);
}
