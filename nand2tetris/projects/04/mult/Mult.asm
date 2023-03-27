// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@R2
M=0   //initial value for R2

(LOOP)

@R1
D=M

@END
D;JEQ    //setting up the condition for the loop

@R0
D=M

@R2
M=M+D    //multiplication as repeated addition

@R1
M=M-1    //change in value of R1 to facilitate the eventual termination of the loop

@LOOP
0;JMP   //goes back to the beginning of the loop

(END)

@END    //infinite loop as an end to the program
0;JMP
