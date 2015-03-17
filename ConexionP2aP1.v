`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:00 03/15/2015 
// Design Name: 
// Module Name:    ConexionP2aP1 
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
module ConexionP2aP1(input wire clk, reset, iniciarr, validoo, terminarr, 
input wire [4:0] dd ,
output  [4:0] qq,
input wire d,d1,
output  q,q1
    );
	 
	 
wire [3:0] s;
wire [1:0] w;
wire [4:0] x;

FSM1 mod0(.clk(clk), .reset(reset), .iniciarr(iniciarr), .validoo(validoo), .terminarr(terminarr),.pasar1(s[0]),
 .pasar2(s[1]), .pasar3(s[2]), .listo(s[3]));

// primeros registros 
Registro_2 mod1(.clk(clk), .reset(reset) ,.en(s[0]) ,.dd(dd) ,.qq(x));
Registro_1 mod2(.clk(clk), .reset(reset) , .en(s[1]) ,.d(d),.q(w[0]));
Registro_1 mod3(.clk(clk), .reset(reset) , .en(s[2]) ,.d(d1),.q(w[1]));

// segundos registros 
Registro_2 mod4(.clk(clk), .reset(reset) ,.en(s[3]) ,.dd(x) ,.qq(qq));
Registro_1 mod5(.clk(clk), .reset(reset) , .en(s[3]) ,.d(w[0]),.q(q));
Registro_1 mod6(.clk(clk), .reset(reset) , .en(s[3]) ,.d(w[1]),.q(q1));



endmodule
