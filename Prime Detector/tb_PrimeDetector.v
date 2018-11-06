////////////////////////////////////////////////////////////////////////////////
// Company:   Atılım University	
// Engineer:   R. Erdem Uysal
//
// Create Date:   15:17:29 10/28/2018
// Design Name:   PrimeDetector
// Module Name:   C:/Users/ASUS/Projects/Xilinx/PrimeDetector/tb_PrimeDetector.v
// Project Name:   PrimeDetector
// Target Device:   Digilent BASYS2
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PrimeDetector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module tb_PrimeDetector;
	// Inputs
	reg [3:0] N;
	//Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	PrimeDetector uut (
		.N(N), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		N = 0;	#10;
		N = 1;	#10;
		N = 2;	#10;
		N = 3;	#10;
		N = 4;	#10;
		N = 5;	#10;
		N = 6;	#10;
		N = 7;	#10;
		N = 8;	#10;
		N = 9;	#10;
		N = 10;	#10;
		N = 11;	#10;
		N = 12;	#10;
		N = 13;	#10;
		N = 14;	#10;
		N = 15;	#10;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end
endmodule

