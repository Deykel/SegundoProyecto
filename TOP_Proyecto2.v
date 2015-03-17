`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:07:52 03/15/2015 
// Design Name: 
// Module Name:    TOP_Proyecto2 
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
module TOP_Proyecto2(input wire clk, reset,ps2d, ps2c, rx_en, output  [4:0] qq, output  q,q1);

wire [6:0] datos; 
wire [2:0] s; 

Rec_Val_Trad mod0 (.clk(clk), .reset(reset),.ps2d(ps2d),.ps2c(ps2c), .rx_en(rx_en),.valido(s[0]), .iniciar(s[1]),
.terminar(s[2]),.traduccion(datos) );

ConexionP2aP1 mod1(.clk(clk), .reset(reset), .iniciarr(s[1]), .validoo(s[0]), .terminarr(s[2]),.dd(datos[6:2]) ,.qq(qq),.d(datos[1]),
.d1(datos[0]),.q(q),.q1(q1));

endmodule
