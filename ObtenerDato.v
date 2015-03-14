`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:42:58 03/13/2015 
// Design Name: 
// Module Name:    ObtenerDato 
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
module ObtenerDato( input wire ready, clk,reset, input wire [7:0] datain, output reg [7:0] dataout, output reg  actual, 
output reg dataready
    );

//declaración de señales 	 
reg estado, est_sig;
reg [7:0] datos;

//inicialización

initial begin 
dataout=8'd0;
actual=1'd0;// solo para simulacion 
end

// registro de estados

		
always @(posedge clk) 
	if(reset)
	begin
		estado=1'b0;
	end	
	else
		estado=est_sig;
		
// nueva	
always@(ready)
	begin 
	   datos=datain;
		est_sig=estado;
		
	case(estado)
	
	2'b00:
	begin
		actual=1'd0;// solo para simulacion 
		dataready=1'b0;
		if (ready & datain==8'hF0)
		begin
			est_sig=1'b1;
			end
		else 
			est_sig=1'b0;
	end
	
	2'b01:
	begin
		actual=1'd1; // solo para simulacion 
		if (ready) begin
			est_sig=1'b0;
			dataout=datos;
			dataready=1'b1;
			end
		else 
			est_sig=1'b1;
	end
		

default: est_sig=1'b0;

endcase
end

endmodule
