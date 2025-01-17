// 🟢 Setup Procedure - Runs Once to Set The Canvas
void setup() {
  size(400, 400); 
  noStroke(); // Winston's handsome features don't need outlines
}

// 🎯 Variable Declarations
float eyeSize = 40; // Eye size variable for animation
float eyeSizeChange = 1; // Change in eye size
float faceX = 200; // Face X position for animation
float faceSpeed = 2; // Speed of the face movement
float mouthColor = 65; // Variable for mouth color animation

// 🟢 Draw Procedure - Runs on Repeat
void draw() {
  background(220); 
  
  faceX=faceX+5; 
  mouthColor=mouthColor+2;
  faceSpeed=faceSpeed+5;
  eyeSize=eyeSize+7
   if(faceX>260){faceX=5}
  if(mouthColor>300){mouthColor=65}
  if(eyeSize>50){eyeSize=65}
  
  
  // Draw Face
  fill(225, 145, 0); // Yellow face
  ellipse(faceX, 208, 300, 300); 
  
  // Draw Eyes
  fill(46, 46, 41); // Dark eyes
  ellipse(faceX - 50, 151, eyeSize, eyeSize); // Left eye
  ellipse(faceX + 50, 142, eyeSize, eyeSize); // Right eye
  
  // Draw Mouth
  fill(252, mouthColor, mouthColor); // Animated mouth color
  ellipse(faceX + 50, 240, 120, 136); // Mouth
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
