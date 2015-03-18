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
module Validacion(  input wire [7:0] datain, output reg validat,validap,validab,iniciar,terminar
    );
	 
	 
always@(datain)
	begin
							validat=1'b0;
							validap=1'b0;
							validab=1'b0;
							iniciar=1'b0;
							terminar=1'b0;
				case(datain)
			    8'h16://1
					begin validat=1'b1; end
				 8'h1E: //2
					begin validat=1'b1; end
				 8'h26: //3
					begin validat=1'b1; end
				 8'h4D: //p1
					begin validap=1'b1; end
				 8'h21: //c=p0
					begin validap=1'b1; end
				 8'h32: //b1
					begin validab=1'b1; end
				 8'h31: //n=b0 
					begin validab=1'b1; end 
				 8'h5A: //terminar=enter
					begin terminar=1'b1; end
				 8'h15: //iniciar=q
					begin iniciar=1'b1;	end
		
				default: begin 
							validat=1'b0;
							validap=1'b0;
							validab=1'b0;
							iniciar=1'b0;
							terminar=1'b0;
							end
				endcase
		
	
	end


endmodule
