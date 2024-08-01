//PaintBoard
//Get creative and draw anything you want! There are many colors, brush sizes, and tools to choose from.
//Created by Sandman2-0 on github (https://github.com/sandman2-0/)

int currentTool = 1;
int thickness = 20;
color brushClr = color(255,0,0);

void setup()
{
  size(800,500);  //Setting the screen size
  frameRate(240);
  noStroke();     //Disabling stroke
  myBackground(); //Calling the background method
}

void myBackground()
{
  background(235,241,255); //Setting the background to white
}

void draw()
{
  //Drawing Functionality
  if(mousePressed == true){
    if(currentTool == 1){
      fill(brushClr);
      ellipse(mouseX, mouseY, thickness, thickness);
    }
    else if(currentTool == 2){
      fill(235,241,255);
      ellipse(mouseX, mouseY, thickness, thickness);
    }
  }
  
  fill(143,179,255);
  rect(20,20,150,460,20);
  
  brushThickness();
  brushColor();
  tools();
}

void brushThickness()
{
  fill(0);
  textSize(20);
  text("Thickness:", 35,50);
  
  //Adding black border around current selection
  if(thickness == 20){
    ellipse(45,73,22,22);
  }
  else if(thickness == 17){
    ellipse(72,73,19,19);
  }
  else if(thickness == 15){
    ellipse(97,73,17,17);
  }
  else if(thickness == 13){
    ellipse(121,73,15,15);
  }
  else if(thickness == 11){
    ellipse(142,73,13,13);
  }
  
  fill(255);
  ellipse(45,73,20,20); //Largest Thickness
  ellipse(72,73,17,17); //Second Largest
  ellipse(97,73,15,15); //Smaller
  ellipse(121,73,13,13); //Second Smallest
  ellipse(142,73,11,11); //Smallest
}

void brushColor()
{
  fill(0);
  textSize(20);
  text("Brush Color:", 35,120);
  
  //Grey border - Row 1 (red)
  if(brushClr == color(255,0,0)){
    fill(75);
    rect(33,133,34,34,10);
  }
  else if(brushClr == color(255,88,88)){
    fill(75);
    rect(75,133,34,34,10);
  }
  else if(brushClr == color(255,144,144)){
    fill(75);
    rect(117,133,34,34,10);
  }
  
  //Grey border - Row 2 (orange)
  if(brushClr == color(255,145,0)){
    fill(75);
    rect(33,176,34,34,10);
  }
  else if(brushClr == color(255,174,67)){
    fill(75);
    rect(75,176,34,34,10);
  }
  else if(brushClr == color(255,199,126)){
    fill(75);
    rect(117,176,34,34,10);
  }
  
  //Grey border - Row 3 (yellow)
  if(brushClr == color(237,255,0)){
    fill(75);
    rect(33,219,34,34,10);
  }
  else if(brushClr == color(246,255,126)){
    fill(75);
    rect(75,219,34,34,10);
  }
  else if(brushClr == color(251,255,196)){
    fill(75);
    rect(117,219,34,34,10);
  }
  
  //Grey border - Row 4 (green)
  if(brushClr == color(21,209,13)){
    fill(75);
    rect(33,262,34,34,10);
  }
  else if(brushClr == color(46,255,36)){
    fill(75);
    rect(75,262,34,34,10);
  }
  else if(brushClr == color(149,255,144)){
    fill(75);
    rect(117,262,34,34,10);
  }
  
  //Grey border - Row 5 (blue)
  if(brushClr == color(3,88,255)){
    fill(75);
    rect(33,305,34,34,10);
  }
  else if(brushClr == color(75,136,255)){
    fill(75);
    rect(75,305,34,34,10);
  }
  else if(brushClr == color(160,224,255)){
    fill(75);
    rect(117,305,34,34,10);
  }
  
  //Grey border - Row 6 (purple)
  if(brushClr == color(148,0,255)){
    fill(75);
    rect(33,348,34,34,10);
  }
  else if(brushClr == color(196,116,255)){
    fill(75);
    rect(75,348,34,34,10);
  }
  else if(brushClr == color(222,139,255)){
    fill(75);
    rect(117,348,34,34,10);
  }
  
  //Grey border - Row 7 (shades)
  if(brushClr == color(255)){
    fill(75);
    rect(33,393,34,34,10);
  }
  else if(brushClr == color(152)){
    fill(75);
    rect(75,393,34,34,10);
  }
  else if(brushClr == color(0)){
    fill(75);
    rect(117,393,34,34,10);
  }
  
  //Row 1 (red)
  fill(255,0,0);
  rect(35,135,30,30,5);
  fill(255,88,88);
  rect(77,135,30,30,5);
  fill(255,144,144);
  rect(119,135,30,30,5);
  
  //Row 2 (orange)
  pushMatrix();
    translate(0,43);
    
    fill(255,145,0);
    rect(35,135,30,30,5);
    fill(255,174,67);
    rect(77,135,30,30,5);
    fill(255,199,126);
    rect(119,135,30,30,5);
  popMatrix();
  
  //Row 3 (yellow)
  pushMatrix();
    translate(0,86);
    
    fill(237,255,0);
    rect(35,135,30,30,5);
    fill(246,255,126);
    rect(77,135,30,30,5);
    fill(251,255,196);
    rect(119,135,30,30,5);
  popMatrix();
  
  //Row 4 (green)
  pushMatrix();
    translate(0,129);
    
    fill(21,209,13);
    rect(35,135,30,30,5);
    fill(46,255,36);
    rect(77,135,30,30,5);
    fill(149,255,144);
    rect(119,135,30,30,5);
  popMatrix();
  
  //Row 5 (blue)
  pushMatrix();
    translate(0,172);

    fill(3,88,255);
    rect(35,135,30,30,5);
    fill(75,136,255);
    rect(77,135,30,30,5);
    fill(160,224,255);
    rect(119,135,30,30,5);
  popMatrix();
  
  //Row 6 (purple)
  pushMatrix();
    translate(0,215);
    
    fill(148,0,255);
    rect(35,135,30,30,5);
    fill(196,116,255);
    rect(77,135,30,30,5);
    fill(222,139,255);
    rect(119,135,30,30,5);
  popMatrix();
  
  //Row 7 (shades)
  pushMatrix();
    translate(0,260);
    
    fill(255);
    rect(35,135,30,30,5);
    fill(152);
    rect(77,135,30,30,5);
    fill(0);
    rect(119,135,30,30,5);
  popMatrix();
}

void tools()
{
  //Adding black border around selected tool
  if(currentTool == 1){ //Paint brush
    fill(0);
    rect(33,436,34,34,100);
  }
  else if(currentTool == 2){ //Eraser
    fill(0);
    rect(75,436,34,34,100);
  }
  
  //Paint brush
  fill(143,179,255);
  rect(35,438,30,30,100); //Background square
  
  fill(0);
  ellipse(50,458,5,11); //Handle
  rect(42.5,452,15,3);
  rect(42.5,443,15,8); //Brush
  
  //Eraser
  fill(143,179,255);
  rect(77,438,30,30,100); //Background square

  pushMatrix();
    translate(-2,0);
    
    fill(255);
    ellipse(89.5,457.5,8.5,8.5); //Eraser
    
    fill(0);
    beginShape(); //Eraser sleeve
      vertex(95,442);
      vertex(102,447);
      vertex(93,460);
      vertex(86,455);
    endShape(CLOSE);
    
    rect(96,461,7,2,100); //Eraser Lines
    rect(98,458,7,2,100);
  popMatrix();
  
  //Clear (garbage can)
  fill(143,179,255);
  rect(119,438,30,30,100); //Background square
  
  fill(0);
  rect(127,447,14,16,5); //Can
  rect(127,447,14,4);
  fill(255);
  rect(131,451,1,7,100);
  rect(134,451,1,7,100);
  rect(137,451,1,7,100);
  
  fill(0);
  rect(127,444,14,2); //Lid
  rect(131.5,442,5,3,100);
}

void mousePressed()
{
  //Thickness
  if((mouseX >= 35 && mouseX <= 55) && (mouseY >= 63 && mouseY <= 83)){
    thickness = 20;
  }
  else if((mouseX >= 63.5 && mouseX <= 80.5) && (mouseY >= 63 && mouseY <= 83)){
    thickness = 17;
  }
  else if((mouseX >= 89.5 && mouseX <= 104.5) && (mouseY >= 63 && mouseY <= 83)){
    thickness = 15;
  }
  else if((mouseX >= 114.5 && mouseX <= 127.5) && (mouseY >= 63 && mouseY <= 83)){
    thickness = 13;
  }
  else if((mouseX >= 136.5 && mouseX <= 147.5) && (mouseY >= 63 && mouseY <= 83)){
    thickness = 11;
  }
  
  //Color
  if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 135 && mouseY <= 165)){ //Red 1
    brushClr = color(255,0,0);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 135 && mouseY <= 165)){ //Red 2
    brushClr = color(255,88,88);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 135 && mouseY <= 165)){ //Red 3
    brushClr = color(255,144,144);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 178 && mouseY <= 208)){ //Orange 1
    brushClr = color(255,145,0);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 178 && mouseY <= 208)){ //Orange 2
    brushClr = color(255,174,67);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 178 && mouseY <= 208)){ //Orange 3
    brushClr = color(255,199,126);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 221 && mouseY <= 251)){ //Yellow 1
    brushClr = color(237,255,0);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 221 && mouseY <= 251)){ //Yellow 2
    brushClr = color(246,255,126);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 221 && mouseY <= 251)){ //Yellow 3
    brushClr = color(251,255,196);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 264 && mouseY <= 294)){ //Green 1
    brushClr = color(21,209,13);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 264 && mouseY <= 294)){ //Green 2
    brushClr = color(46,255,36);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 264 && mouseY <= 294)){ //Green 3
    brushClr = color(149,255,144);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 307 && mouseY <= 337)){ //Blue 1
    brushClr = color(3,88,255);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 307 && mouseY <= 337)){ //Blue 2
    brushClr = color(75,136,255);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 307 && mouseY <= 337)){ //Blue 3
    brushClr = color(160,224,255);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 350 && mouseY <= 380)){ //Purple 1
    brushClr = color(148,0,255);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 350 && mouseY <= 380)){ //Purple 2
    brushClr = color(196,116,255);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 350 && mouseY <= 380)){ //Purple 3
    brushClr = color(222,139,255);
  }
  else if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 395 && mouseY <= 425)){ //Shades 1
    brushClr = color(255);
  }
  else if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 395 && mouseY <= 425)){ //Shades 2
    brushClr = color(152);
  }
  else if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 395 && mouseY <= 425)){ //Shades 3
    brushClr = color(0);
  }
  
  //Tools
  if((mouseX >= 35 && mouseX <= 65) && (mouseY >= 438 && mouseY <= 468)){ //Paint brush
    currentTool = 1;
  }
  if((mouseX >= 77 && mouseX <= 107) && (mouseY >= 438 && mouseY <= 468)){ //Eraser
    currentTool = 2;
  }
  if((mouseX >= 119 && mouseX <= 149) && (mouseY >= 438 && mouseY <= 468)){ //Clear
    myBackground(); //Calling background to clear the screen
  }
}
