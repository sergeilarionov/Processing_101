/**********************************
 Processing 101: Shapes
 **********************************
  
 Because the code in draw() and setup() executes top to bottom, the order of the shapes determines whether it gets drawn in the back or the front. 
 
 ellipse(x,y,w,h)         : Input parameters are x and y coordinates for the position as well as desired width and height
 rect(x,y,w,h)            : Input parameters are x and y coordinates as well as width and height
 line(x1,y1,x2,y2)        : Input parameters are two sets of xy coordinates.
 fill(color);             : Input parameters specify the color of the shape. Can be an interger 0-255 for greyscale or 255,255,255 for RGB color.
 stroke(color)            : Color of the shape outline. Input parameters specify the stroke color of the shape. Can be an interger 0-255 for greyscale or 255,255,255 for RGB color.
 strokeWeight(int)        : Thickness of the outline. Input parameters in pixels.
 
 **********************************/

void setup() {

  size(1000, 1000);
}

void draw() {

  background(0);
  stroke(255);
  strokeWeight(4);

  // Head
  fill(0);
  ellipse(500, 500, 250, 250);

  // Eyes
  fill(255);
  ellipse(450, 460, 60, 60); // Left eye
  fill(0);
  ellipse(450, 470, 20, 20); // Left iris
  fill(255);
  ellipse(550, 460, 60, 60); // Right eye
  fill(0);
  ellipse(550, 450, 20, 20); // Right iris

  // Mouth
  line(430, 550, 570, 550);
  fill(255);
  noStroke();
  rect (450, 550, 45, 20);
  rect (505, 550, 45, 20);
}
