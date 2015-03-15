`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:40 03/14/2015 
// Design Name: 
// Module Name:    Rec_Val_Trad 
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
module Rec_Val_Trad(input wire clk, reset,
input wire ps2d, ps2c, rx_en,
output wire valido, iniciar,terminar,
output wire [6:0] traduccion

    );
	 
	 
wire [7:0] datos;
wire s;
RecepcionDato mod0(.clk(clk), .reset(reset),.ps2d(ps2d), .ps2c(ps2c), .rx_en(rx_en),.dataout(datos),.dataready(s)); 
Validacion mod1 (.ready(s),.datain(datos),.valido(valido));
Traduccion mod2( .datain(datos), .dataout(traduccion), .iniciar(iniciar),.terminar(terminar) );
	 



endmodule
