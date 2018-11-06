////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:25 10/28/2018
// Design Name:   SwitchEncoder
// Module Name:   C:/Users/ASUS/Projects/Xilinx/SwitchEncoder/tb_SwitchEncoder.v
// Project Name:  SwitchEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SwitchEncoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_SwitchEncoder;
	reg [4:0] sw;
	wire [6:0] seg7;
	// Instantiate the Unit Under Test (UUT)
	SwitchEncoder uut (
		.sw(sw), 
		.seg7(seg7)
	);
	initial begin
		// Initialize Inputs
		sw = 0;	#10
		sw = 1;	#10
		sw = 2;	#10
		sw = 3;	#10
		sw = 4;	#10
		sw = 5;	#10
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
	end     
endmodule

