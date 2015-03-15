`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:52 03/14/2015 
// Design Name: 
// Module Name:    Traduccion 
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
module Traduccion( input wire [7:0] datain, output reg [6:0] dataout, output reg iniciar,terminar
    );
	 
// temp[6:2] puerta[1] presencia[0]	 
always@(datain)
	begin
		
		
				case(datain)
			    8'h16: begin
				 dataout<=7'b1100000; //temp 24
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h1E: begin
				 dataout<=7'b1101100; //temp 27
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end 
				 8'h26: begin
				 dataout<=7'b1111000; //temp 30
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h4D: begin
				 dataout<=7'b0000010; //puerta 1
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h21: begin
				 dataout<=7'b0000000; // puerta 0
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h32: begin
				 dataout<=7'b0000001; // bebe 1
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h31: begin
				 dataout<=7'b0000000; //bebe 0
				 iniciar<=1'b0;
				 terminar<=1'b0;
				 end
				 8'h5A: begin
				 dataout<=7'b0000000; //terminar
				 iniciar<=1'b0;
				 terminar<=1'b1;
				 end
				 8'h15: begin
				 dataout<=7'b0000000;	//iniciar
				 iniciar<=1'b1;
				 terminar<=1'b0;
				 end
				default: begin 
				dataout<=7'b0000000;	
				 iniciar<=1'b0;
				 terminar<=1'b0;
				end
				endcase
		
	
	end

	 
	 



endmodule
