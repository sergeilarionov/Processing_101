/**********************************
 Processing 101: Hello World
 **********************************
 
 setup()                 : Runs once in the very beginning, initiaizes the program.
 size(width, height)     : Function that sets the canvas dimentions in pixels
 frameRate()             : Optional function that sets the number of frames per second (60 frames by default)
 println()               : Function that prints text into console
 draw()                  : Runs N number of frames per second 
 frameCount              : Variable that displays current frame count
 
 **********************************/

void setup() {

  size(100, 100);
  frameRate(60);
  println("Hello World");
}

void draw() {

  println("I said 'Hello World' " + frameCount + " times");
}
