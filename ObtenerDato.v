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

//declaración de señales 	 
reg [1:0] estado, est_sig;
wire [7:0] datos;

//inicialización
 
 
always @(posedge clk,posedge reset) 
	begin
	if(reset)
		estado=1'b0;
		
	else
		estado=est_sig;
		
	end
	
	
	


always@*
	begin 
		
		est_sig=estado; 
		

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
			est_sig=2'b11;
			dataout=datos;
				
			end
		else begin
			est_sig=2'b10; end		
	end
	
	2'b11:begin est_sig=2'b00; end
	
		



endcase

end
assign datos=datain;
endmodule
