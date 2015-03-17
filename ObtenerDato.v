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
module ObtenerDato( input wire ready, clk,reset, input wire [7:0] datain, output reg [7:0] dataout);

//declaraci�n de se�ales 	 
reg [1:0] estado, est_sig;
reg [7:0] datos;

//inicializaci�n
 
 
always @(posedge clk,posedge reset) 
	begin
	if(reset)
		estado=2'b00;
		
	else
		estado=est_sig;
		
	end
	
	initial begin 
		dataout=8'h00;
		
		end


always@*
	begin 
		
		est_sig=estado; 
		datos=datain;

	case(estado)
	2'b00: 
	begin
		if (ready) begin
			
			est_sig=2'b01; end 
		else begin
			est_sig=estado;end 
	end
	
	2'b01: 
	begin
		if ((datain)==(8'hf0))begin
			est_sig=2'b10;end
		else begin
			est_sig=2'b00;end		
	end
	
	2'b10: 
	begin
		if (ready) 
			begin
			est_sig=2'b00;
			dataout=datos;
				
			end
		else begin
			est_sig=2'b10; end		
	end
	
	2'b11:begin 
	 est_sig=2'b00; end
	
		



endcase

end
	
endmodule
