//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:02 12/02/2018 
// Design Name: 
// Module Name:    FourBitCounter 
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
`timescale 1ns / 1ps
module FourBitCounter(
    input wire EN, clk,	// Add reset(rst) if required
    output reg MAX
    );
	reg [1:0] p_state, n_state;
	
	always @ (posedge clk) // State memory
		p_state <= n_state;
		
	// With reset input
	// always @ (posedge clk, posedge rst) // State memory
	//		if(rst)
	//			p_state <= 4'b0000;
	//		else 
	//			p_state <= n_state;
	//
	always @ (p_state, EN)
		if(EN)
			n_state = p_state + 1;
		else
			n_state = p_state;
	always @ (n_state, EN)
		if((p_state == 4'b1111) && EN)
			MAX = 1'b1;
		else MAX = 1'b0;
	endmodule