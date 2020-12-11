class Face {
  
  String name;
  int posX, posY;
  color faceColor = 255;
  int faceStroke = 3;
  int headW = 250;
  int headH = 250;
  int eyeW = 60;
  int eyeH = 60;
  int irisW = 20;
  int irisH = 20;
  int toothW = 45;
  int toothH = 20;

  Face(String name_, int posX_, int posY_) {
    name = name_;
    posX = posX_;
    posY = posY_;
  }

  void display() {
    
    
    strokeWeight(faceStroke);
    
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
