//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Michael Mihalovich
// Email: mmiha004@ucr.edu
// 
// Assignment name: Lab 02 - ALU
// Lab section: 021
// TA: Nurlan Nazaraliyev
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

`timescale 1ns / 1ps

// --------------------------------------
// MIPS ALU Control & Funct constants
// --------------------------------------

`define ALU_AND         4'b0000
`define ALU_OR          4'b0001
`define ALU_ADD         4'b0010
`define ALU_SUBTRACT    4'b0110
`define ALU_LESS_THAN   4'b0111
`define ALU_NOR         4'b1100
  
`define FUNCT_AND       6'b100100
`define FUNCT_OR        6'b100101
`define FUNCT_ADD       6'b100000
`define FUNCT_SUBTRACT 	6'b100010
`define FUNCT_LESS_THAN 6'b101010
`define FUNCT_NOR 		6'b100111


`define WORD_SIZE 32 

module alu (
    input wire [3:0] alu_control,  
    input wire [`WORD_SIZE-1:0] A,
    input wire [`WORD_SIZE-1:0] B, 
    output reg zero, 
    output reg [`WORD_SIZE-1:0] result
);

// ---------------------------------------------------------
// Implementation of MIPS ALU 
// --------------------------------------------------------- 

always @(alu_control or A or B) begin
    // Put your code here
    case (alu_control)
        `ALU_AND:       result = A & B;
        `ALU_OR:        result = A | B;
        `ALU_ADD:       result = A + B;
        `ALU_SUBTRACT:  result = A - B;
        `ALU_LESS_THAN: result = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
        `ALU_NOR:       result = ~(A | B);
        default:        result = A + B;
    endcase

    // Set zero flag
    zero = (result == 32'b0) ? 1'b1 : 1'b0;
end 

endmodule