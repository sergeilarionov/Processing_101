/**********************************
 Processing 101: Loops
 **********************************
 
 Loops are operations that come in handy when you need to do a certain task multiple times.
 Let's assume we wanted to render three faces instead of just one. 
 Without loops we would have to duplciate our code 3 times, but with a loop we are able to execute the same block of code multiple times.
 
 Basic structure of a loop:
 
 for (int i = 0; i < 40; i = i+1) {
 // Your block of code goes here
 }
 
 i            : An variable representing the count.
 int i = 0    : Initialize the variable i and set its starting value to 0.
 i < 40       : Repeat operation as long as i is less than 40.
 i = i+1      : Increment variable i by adding 1.
 
 **********************************/

// General
color backgroundColor = 0; // Black
int numFaces = 3; // Number of faces to draw
int facePadding;
int posX, posY; // Values are assigned in setup() after the canvas width has been assigned

// Face
color faceColor = 255; // White
int faceStroke = 3;
int headW = 250;
int headH = 250;
int eyeW = 60;
int eyeH = 60;
int irisW = 20;
int irisH = 20;
int toothW = 45;
int toothH = 20;


void setup() {

  size(1920, 1080);
  facePadding = width/(numFaces + 1); // calculates the spacing between the faces based on screen size and num of faces.
  posY = height/2;
}

void draw() {

  background(backgroundColor);
  strokeWeight(faceStroke);

  // Our face will be draw 3 times
  for (int i = 1; i < 4; i = i + 1) {

    posX = facePadding * i;
    
    // Head
    stroke(faceColor);
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
}
