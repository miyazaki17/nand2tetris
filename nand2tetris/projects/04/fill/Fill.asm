// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


(LOOP)

  @SCREEN
  D=A             // setting pointer variable pixels to 16384
  @pixels
  M=D   
      
 (COLOR)

  @KBD    
  D=M              // read keyboard
  @COLOR_SET
  D;JEQ            // if keyboard==0, go to color set, else select black color 
 
  (BLACK)
   D=-1

  (COLOR_SET)
   @pixels
   A=M
   M=D         // using indirect addressing, sets the given pixel to desired color
  
    
  @pixels
  M=M+1
  D=M        // sets the pixel variable to the next pixel
        
  @24576
  D=D-A
  @COLOR
  D;JLT    // continues coloring till the entire screen is colored

@LOOP
0;JMP // infinite loop    // runs the program indefinetly