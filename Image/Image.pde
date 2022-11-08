//Background Image Example
//
//Global Varibles
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=true;
float imageWidthRatio=0.0, imageHeightRatio=0.0;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
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
//Image Orientation: Landscape, portrait, square
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //Fales if Portrait
  largerDimension = picWidth;
  smallerDimension = picHeight;
  heightLarger = true;
}
/* Older algorithm
 if( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 */
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//BeterImage Stretch Algorithm
if ( appWidth >= picWidth) {
  picWidthAdjusted = picWidth;
 if( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if( widthLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
} else {
  //Images smaller than CANVAS needs separte algorithm
}
if ( appWidth >= picWidth) {
  picWidthAdjusted = picWidth;
 if( widthLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 if( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
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
