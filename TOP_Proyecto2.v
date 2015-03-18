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
wire [4:0] s; 

Rec_Val_Trad recepvaltrad (.clk(clk), .reset(reset),.ps2d(ps2d),.ps2c(ps2c), .rx_en(rx_en),
.validat(s[0]),.validap(s[1]),.validab(s[2]), .iniciar(s[3]),.terminar(s[4]),.traduccion(datos));

ConexionP2aP1 conexion(.clk(clk), .reset(reset),.validat(s[0]),.validap(s[1]),.validab(s[2]), .iniciar(s[3]),.terminar(s[4]),.dd(datos[6:2]) ,.qq(qq),.d(datos[1]),
.d1(datos[0]),.q(q),.q1(q1));

endmodule
