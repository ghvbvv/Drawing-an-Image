//Background Image Example
//
//Global Varibles
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
void setup() 
{
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Image Dimensions for Aspect Ratio
  //edmonton.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth = 800;
  int picHeight = 600;
  //
  float smallerDimension, largerDimension;
  //Image Orientation: Landscape, Portrait, Square
  if ( picWidth >= picHeight ) { //True if Landscape or Square
    largerDimension = picWidth;
    smallerDimension = picHeight;
    widthLarger = true;
  } else { //False if Portrait
    largerDimension = picHeight;
    smallerDimension = picWidth;
    heightLarger = true;
  }
  //
  //Teaching example, width is known to be larger
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeightAdjusted ) {
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = appWidthAdjusted * imageHeightRatio;
      if(appHeight < picHeightAdjusted ) {
        println("STOP: image is too big for CANVAS")
        exit(); //stops any further use of APP
        //Remember: goal is 1:1 aspect ratio
      }
    } else {
      //Image smaller than CANVAS needs separate algorithm
    }
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
  //
  //Verifying Varibles Values
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Image dimensions are:", picWidth, picHeight);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
  //Population
  pic = loadImage("../Images Used/edmonton.jpg");
  imageBackgroundX = appWidth*0;
  imageBackgroundY = appHeight*0;
  imageBackgroundWidth = appWidth-1;
  imageBackgroundHeight = appHeight-1;
  //
  //Rectangle Layout and Image drawing to CANVAS
  //rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
  //
  //Background Image must be single executed code
  //image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
  image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
}// End setup
//
void draw() 
{
  tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  //if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
  
}//End draw
void keyPressed() {
}//End keyPressed
void mousePressed() {
  if (mouseButton == LEFT) nightMode = true;
  if (mouseButton == RIGHT) nightMode = false;
}//End mousePressed
//
size(1000, 800); //Landscape
//Copy Display Algoritm from Hello World
appWidth = width; 
appHeight = height;
//
//Apect Ratio Calculations
//edmonton.jpg
int picWidth = 880;
int picHeight = 550;

if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //Fales if Portrait
  largerDimension = picWidth;
  smallerDimension = picHeight;
  heightLarger = true;
}
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//BeterImage Stretch Algorithm
if ( appWidth >= picWidth) {
  picWidthAdjusted = picWidth;
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( widthLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
} else {
  //Images smaller than CANVAS needs separte algorithm
}
if ( appWidth >= picWidth) {
  picWidthAdjusted = picWidth;
  if ( widthLarger == true ) imageHeightRatio = largerDimension / largerDimension;
  if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
} else {
  //Images smaller than CANVAS needs separte algorithm
}
println (appWidth, picWidth, picWidthAdjusted);
println (appHeight, picHeight, picHeightAdjusted);
picWidthAdjusted = appWidth * imageWidthRatio;
picHeightAdjusted = appHeight * imageHeightRatio;
//
//Developer verified varibles
println (appWidth, picWidth, picWidthAdjusted);
println (appHeight, picHeight, picHeightAdjusted);
picWidthAdjusted = appWidth * imageWidthRatio;
picHeightAdjusted = appHeight * imageHeightRatio;
//

if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
//tint(0, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
//tint(64, 64, 40); //RGB: Night Mode
