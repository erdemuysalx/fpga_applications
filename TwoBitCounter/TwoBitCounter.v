//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:50 12/02/2018 
// Design Name: 
// Module Name:    TwoBitCounter 
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
module TwoBitCounter(
    input wire EN, clk,
    output reg MAX
    );
	 localparam [1:0] zero = 2'b00,
							one = 2'b01,
							two = 2'b10,
							three = 2'b11;
							
	reg [1:0] p_state, n_state;
	
	always @ (posedge clk) // State memory
		p_state <= n_state;
		
	always @ (p_state, EN)
		case (p_state)
			zero:  if(EN) n_state = one;
					 else n_state = zero;
			one:	 if(EN) n_state = two;
					 else n_state = one;
			two:	 if(EN) n_state = three;
					 else n_state = two;
			three: if(EN) n_state = one;
					 else n_state = three;
			default: n_state = zero;
		endcase
	always @ (n_state, EN)
		if((p_state == three) && EN)
			MAX = 1'b1;
		else MAX = 1'b0;
	endmodule
