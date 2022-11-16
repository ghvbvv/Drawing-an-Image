//Background Image Example
//
//Global Varibles
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
float picWidthAdjusted2=0.0, picHeightAdjusted2=0.0;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic, pic2, pic3;
Boolean nightMode=false;
int topHalfX, topHalfY, topHalfWidth, topHalfHeight;
int bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
int tintDayMode=255, tintDayModeOpacity=55;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void setup() 
{
  size(1000, 800); //Landscape
  //Copy Display Algorithm from Hello World
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic = loadImage("../Images Used/Landscape/edmonton.jpg");
  pic2 = loadImage("../Images used/Landscape/Motorcycle.png");
  //pic3 = loadImage("");
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
  //Image Dimensions for Aspect Ratio
  //edmonton.jpg
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  int picWidth = 850;
  int picHeight = 650;
  int pic2Width = 640; //Landscape
  int pic2Height = 494; //Landscape
  //int pic3Width = ;
  //int pic3Height = ;
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
    if ( pic2Width >= pic2Height ) { //True if Landscape or Square
    largerDimension = pic2Width;
    smallerDimension = pic2Height;
    widthLarger = true;
    //Landscape large Image to larger space OR smaller space
  } else { //False if Portrait
    largerDimension = pic2Height;
    smallerDimension = pic2Width;
    heightLarger = true;
  }
  //
  //Teaching example, width is known to be larger
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  float imageHeightRatio2=0.0, imageHeightRatio2=0.0;
  //Better Image Stretch Algorithm, smaller image to larger CANVAS
  if ( appWidth >= picWidth ) {
    picWidthAdjusted = appWidth;
    //
    if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
    //
    if ( appHeight >= picHeight ) {
      if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
      picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
      if (appHeight < picHeightAdjusted ) {
        println("STOP: image is too big for CANVAS");
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
  //Verifying Variable Values after algoroithm
  //Motorcycle Image : landscape into Landscape
  if ( widthLarger == true ) { //Lanscape or Square is TRUE
    picWidthAdjusted2 = topHalfWidth;
    imageHeightRatio2 = smallerDimension2 / largerDimension2;
    picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
  } else { //Portrait is TRUE, heightLarger2==true
    //picWidthAdjusted2 = topHalfWidth;
    //imageHeightRatio2 = smallerDimension2 / largerDimension2;
    //picHeightAdjusted2 = picWidthAdjusted2 * imageHeightRatio2;
  }
  //
  println("App Width:", appWidth, " and App Height:", appHeight);
  println("Larger Image dimension is:", largerDimension);
  println("Image dimensions are:", picWidth, picHeight);
  println("Adjusted Image dimesnions are (stretch is goal):", picWidthAdjusted, picHeightAdjusted);
  //
  println("Image Width:", pic2Width, " and Image Height:", pic2Height);
  println("Larger Image dimension is:", widthLarger2, "or", heightLarger2);
  println("Rectangle dimensions are:", topHalfWidth, topHalfHeight);
  println("Scale Ratios, width: ", "height is", imageHeightRatio2); 
  println("Adjusted Image 2 dimensions are (stretch is goal):", picWidthAdjusted2, picHeightAdjusted2);
  //Rectangular Layout and Image Drawing to CANVAS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( topHalfX, topHalfY, topHalfWidth, topHalfHeight ); //Top Half
  rect( bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight ); //Bottom Hlaf
  //
  //Background Image must be single executed code
  if ( nightMode == false ) tint(tintDayMode, tintDayModeOpacity); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
  if ( nightMode == true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
  //image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  //
}//End setup
//
void draw() 
{
  image( pic2,topHalfX, topHalfY, topHalfWidth, topHalfHeight );
  //image( pic3, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight );
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
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
    //
  }
  if (mouseButton == RIGHT) {
    nightMode = false;
    rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //RGB: Night Mode
    image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
  }
}//End mousePressed
//
//End Main Program
