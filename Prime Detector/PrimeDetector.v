`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:    Atılım University
// Engineer:    R. Erdem Uysal
// 
// Create Date:    15:16:00 10/28/2018 
// Design Name: 
// Module Name:    PrimeDetector 
// Project Name:    PrimeDetector	
// Target Devices:    Digilent BASYS2
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

module PrimeDetector(
    input [3:0] N,
    output reg F
	 );
always @ (N)
	case(N)
		4'd1, 4'd2, 4'd3, 4'd5, 4'd7, 4'd11, 4'd13 : F = 1;
		default : F = 0;
	endcase
endmodule
