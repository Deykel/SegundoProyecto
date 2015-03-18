`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:34 03/14/2015 
// Design Name: 
// Module Name:    Registro_2 
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
module Registro_2(

input wire clk, reset ,
input wire en ,
input wire [4:0] dd ,
output reg [4:0] qq
);

always @(posedge clk, posedge reset)
if (reset)
qq <= 5'd0;
else if (en)
qq <= dd ;

endmodule
