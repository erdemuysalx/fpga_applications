//////////////////////////////////////////////////////////////////////////////////
// Company:   Atilim University
// Engineer:   R. Erdem Uysal
// 
// Create Date:   17:15:27 12/01/2018 
// Design Name: 
// Module Name:   FlashingLED 
// Project Name:   FlashingLED  
// Target Devices:   Digilent BASYS 2
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
module FlashingLED(
    input clk,
    input rst,
    output led_out
    );
	 reg LED_State, LED_State_next;
	 reg [25:0] cnt, cnt_next;
	 
always@ (posedge clk, posedge rst)
	if (rst)
		begin
			LED_State <= 0;
			cnt <= 26'b0;
		end
	else
		begin
			LED_State <= LED_State_next;
			cnt <= cnt_next;
		end
		
always@ (cnt)
	if (cnt >= 26'd2500000)
		begin
			cnt_next = 0;
			LED_State_next = ~LED_State;
		end
	else
		begin
			cnt_next = cnt + 1;
			LED_State_next = LED_State;
		end
	
assign led_out = LED_State;

endmodule