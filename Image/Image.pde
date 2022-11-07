//Background Image Example
//
//Global Varibles
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=true;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
//
size(500, 500); //Landscape
//Copy Display Algoritm from Hello World
appWidth = width; 
appHeight = height;
//
//Apect Ratio Calculations
//edmonton.jpg
int picWidth = 880;
int picHeight = 550;
//Image Orientation: Landscape, portrait, square
if ( picWidth >= picHeight ) { //True if Landscape or Square
  LargerDimension = picWidth;
  smallerDimension = picHeight;
  heightLarger = true;
} else { //Fales if Portrait
  LargerDimension = picWidth;
  smallerDimension = picHeight;
  heightLarger = true;
}
//
if( widthLarger == true ) imageWidthRatio = LargerDimension / LargerDimension;
if( widthLarger == true ) imageHeightRatio = smallerDimension / LargerDimension;
if( heightLarger == true ) imageWidthRatio = smallerDimension / LargerDimension;
if( heightLarger == true ) imageHeightRatio = LargerDimension / LargerDimension;
//
picWidthAdjusted = picWidth * imageWidthRatio;
picHeightAdjusted = picHeight * imageHeightRatio;
//
//Population
pic = loadImage("../Images Used/edmonton.jpg");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
//Rectangle Layout and Image drawing to CANVAS
rect(imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
// if () {} else {} for a Binaary Choice, no single IF
if (nightMode == false) tint(255, 128); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(64, 64, 40); //RGB: Night Mode
//tint(0, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
//tint(64, 64, 40); //RGB: Night Mode
image(pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
