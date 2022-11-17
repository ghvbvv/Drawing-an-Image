//Background Image Example
//
//Global Varibles
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float imageWidthAdjusted3=0.0, imageHeightAdjusted3=0.0;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
PImage pic, pic2, pic3;
Boolean nightMode=false;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup() 
{
  size(1000, 800); //Landscape
  //Copy Display Algorithm from Hello World
  //fullScreen(); //displayWidth, displayHeight 
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic = loadImage("../Images Used/Landscape/edmonton.jpg");
  pic2 = loadImage("../Images used/Landscape/Motorcycle.png");
  pic3 = loadImage("../Images used/Landscape/monkey.jpg");
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  topHalfX = appWidth * 1/4; 
  topHalfY = appHeight * 1/20;
  topHalfWidth = appWidth * 1/2;
  topHalfHeight = appHeight *8/20;
  bottomHalfX = appWidth * 1/2; 
  bottomHalfY = appHeight * 2/4;
  bottomHalfWidth = appWidth * 1/4;
  bottomHalfHeight = appHeight * 4/20;
  //
  //Image Dimensions for Aspect Ratio: image meta data
  //Note: meta explored in MP3's or music files 
  //edmonton.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth1 = 850; //Edmonton Landscape
  int picHeight1 = 650;
  int pic2Width2 = 640; //Motorcycle Landscape
  int pic2Height2 = 494; 
  int pic3Width3 = 315; //monkey Portrait
  int pic3Height3 = 416;
  //
  //Image Orientation: Landscape, Portrait, Square
  float smallerDimension1, smallerDimension2, smallerDimension3;
  float largerDimension1, largerDimension2, largerDimension3;
  float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
  float imageWidthRatio2=0.0, imageHeightRatio2=0.0;
  float imageWidthRatio3=0.0, imageHeightRatio3=0.0;
  if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picWidthAdjusted1 = backgroundImageWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  }
    if ( picWidth2 >= picHeight2 ) { //True if Landscape or Square
    largerDimension2 = picWidth2;
    smallerDimension2 = picHeight2;
    //
    picWidthAdjusted2 = backgroundImageWidth; //from rect() layout
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
  } else { //False if Portrait
    largerDimension2 = picHeight2;
    smallerDimension2 = picWidth2;
    //
    picWidthAdjusted2 = backgroundImageWidth; //from rect() layout
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
    //
  } if ( picWidth3 >= picHeight3 ) { //True if Landscape or Square
    largerDimension3 = picWidth3;
    smallerDimension3 = picHeight3;
    //
    picWidthAdjusted3 = bottomHalfWidth; //from rect() layout
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3 * imageHeightRatio3;
  } else { //False if Portrait
    largerDimension3 = picHeight3;
    smallerDimension3 = picWidth3;
    //
    picWidthAdjusted3 = bottomHalfHeight; //from rect() layout
    imageHeightRatio3 = smallerDimension3 / largerDimension3;
    picHeightAdjusted3 = picWidthAdjusted3* imageHeightRatio3;
  }
  //
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom half
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picWidthAdjusted2);
  //
}//End setup
//
void draw() 
{
  image( pic2, topHalfX, topHalfY, picWidthAdjusted2, picHeightAdjusted2 );
  image( pic3, bottomHalfX, bottomHalfY, picWidthAdjusted3, picHeightAdjusted2 );
}
//End draw 
void keyPressed() {
}//End keyPressed
void mousePressed() {
  //
  //Mouse Pressed will control background image 
  if (mouseButton == LEFT) {
    nightMode = true;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
  }
}//End mousePressed
//
//End Main Program
