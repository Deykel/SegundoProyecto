`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:21 03/14/2015 
// Design Name: 
// Module Name:    RecepcionDato 
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
module RecepcionDato(input wire clk, reset,
input wire ps2d, ps2c, rx_en,
output wire [7:0] dataout, 
output wire dataready
    ); 
	 
wire s; 
wire [7:0] data, salida; 


ps2_rx mod0(.clk(clk),.reset(reset),.ps2d(ps2d), .ps2c(ps2c), .rx_en(rx_en), .rx_done_tick(s),.dout(data));
ObtenerDato mod1( .ready(s), .clk(clk),.reset(reset), .datain(data), .dataout(salida),  .dataready(dataready));


assign dataout=salida;
endmodule
