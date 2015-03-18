`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:02 03/14/2015 
// Design Name: 
// Module Name:    Registro_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Registro_1(

input wire clk, reset ,
input wire en ,
input wire d ,
output reg q
);

always @(posedge clk, posedge reset)
if (reset)
q <= 1'b0;
else if (en)
q <= d ;

endmodule
