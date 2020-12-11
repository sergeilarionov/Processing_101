/**********************************
 Processing 101: Objects
 **********************************
 
 Objects help you modularize and organize your code.
 Each object is a like separate program that has its own variables and functions.
 It's a good practive to save your objects in the saparate tab for organization purposes.
 
 **********************************/

// Classes
Face myFace;
color backgroundColor = 0; // Black

void setup() {

  size(1920, 1080);
  myFace = new Face("Eeny", width/2, height/2);
}

void draw() {

  background(backgroundColor);
  myFace.display();
}
