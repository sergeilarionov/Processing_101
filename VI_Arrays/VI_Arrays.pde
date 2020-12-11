/**********************************
 Processing 101: Arrays
 **********************************
 
 Arrays are containers that hold objects.
 Arrays are most useful when working with too many object to modify manually.
 Simiular to variabels arrays to to specify what type of onject they need to hold (String, int, flaot, Object)
 Typically the arrays are initialized in the very begining. To initlaize an array one must specify its type and the number of cells it will need to have.
 
 
 **********************************/
// Classes
Face myFace; // Initialize the Face object
int numFaces = 3;
Face[] myFaces = new Face[numFaces]; // Initialize an array containing 3 empty cells to hold the Face objects
String[] myNames = {"Eeny", "Meeny", "Miny"};
color backgroundColor = 0;
int posX, posY;
int facePadding;

void setup() {

  size(1920, 1080);

  facePadding = width/(numFaces + 1); // Calculates the spacing between the faces based on screen size and num of faces.
  posY = height/2;

  // Static way for loading arrays (e.g if you are working with just a few objects)
  //myFaces [0] = new Face("Eeny", facePadding * 1, posY);
  //myFaces [1] = new Face("Meeny", facePadding * 2, posY);
  //myFaces [2] = new Face("Miny", facePadding * 3, posY);

  // Dynamic way of loading arrays
  for (int i = 0; i < 3; i = i + 1) {
    myFaces[i] = new Face(myNames[i], facePadding * (i+1), posY);
  }
}

void draw() {

  background(backgroundColor);

  // Loop through array and display each face
  for (int i = 0; i < myFaces.length; i = i + 1) {
    myFaces[i].display();
  }
}
