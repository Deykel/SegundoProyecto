`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:02:22 03/14/2015 
// Design Name: 
// Module Name:    FSM1 
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
module FSM1(


input wire clk, input reset, validat,validap,validab, iniciar,terminar,
output reg pasar1, pasar2, pasar3, listo

    );

//declaración de la señal 

localparam [2:0] A=3'b000, B=3'b001, C=3'b010, D=3'b011, E=3'b100; //F=3'b101;
reg [2:0] estado, est_sig;

//registro de estado

always @(posedge clk)
if (reset)
estado <= A;
else
estado <= est_sig;

//lógica estado siguiente
initial begin 
estado=0;
end 



always @(*)
begin
est_sig = estado;
pasar1=0;
pasar2=0;
pasar3=0;
listo=0;

case (estado)

 A : 
	begin
		if (iniciar)
			est_sig = B;
		else 
			est_sig = A;
	end
 
 B : 
	begin 
		pasar1 = 1'b0;
		if (validat)
			begin
				pasar1 = 1'b1;
				est_sig = C;
			end
		else 
		
			est_sig = B;
	end

 C :
	begin
		if (validap)
			begin
				pasar2 = 1'b1;
				est_sig = D;
				
			end
		else 
			est_sig = C;
	end
 
 D : 
	begin
		if (validab) 
			begin
				pasar3 = 1'b1;
				est_sig = E;	
			end
		else 
			est_sig = D;
	end
 
 

 E : 
	begin
		if (terminar) 
			begin
				listo = 1'b1;
				est_sig = A;
				
			end 
		else 
			est_sig = E;
	end
 
 endcase
 end
 endmodule
