`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:30 03/14/2015 
// Design Name: 
// Module Name:    Validacion 
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
module Validacion(input wire ready,input wire [7:0] datain, output reg valido
    );



always@(ready,datain)
	begin
		
		
				case(datain)
			    8'h16: valido<=1'b1;
				 8'h1E: valido<=1'b1;
				 8'h26: valido<=1'b1;
				 8'h4D: valido<=1'b1;
				 8'h21: valido<=1'b1;
				 8'h32: valido<=1'b1;
				 8'h31: valido<=1'b1;
				 8'h5A: valido<=1'b1;
				 8'h15: valido<=1'b1;	
				default: valido<=1'b0;
				endcase
		
	
	end


endmodule
