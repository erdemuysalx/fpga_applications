`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:24:46 12/01/2018
// Design Name:   FlashingLED
// Module Name:   C:/Users/ASUS/Projects/Xilinx/FlashingLED/tb_FlashingLED.v
// Project Name:  FlashingLED
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlashingLED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FlashingLED;

	// Inputs
	reg clk;
	reg rst;

   // Note: CLK must be defined as a reg when using this method
   			
	// Outputs
	wire led_out;

	// Instantiate the Unit Under Test (UUT)
	FlashingLED uut (
		.clk(clk), 
		.rst(rst), 
		.led_out(led_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
	end
	
	// PERIOD = <value>
	parameter PERIOD = 20;
	
   // Generate the clock
	always begin
      clk = 1'b0;
      #(PERIOD/2) clk = 1'b1;
      #(PERIOD/2);
   end  
      
endmodule

