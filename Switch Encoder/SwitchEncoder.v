//////////////////////////////////////////////////////////////////////////////////
// Company:   Atılım University
// Engineer:   R. Erdem Uysal
// 
// Create Date:    15:48:15 10/28/2018 
// Design Name: 
// Module Name:    SwitchEncoder 
// Project Name:   Switch Encoder
// Target Devices:   Digilent BASYS2
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
module SwitchEncoder(
    input [4:0] sw,
    output reg [6:0] seg7
    );
always @ (sw)
	if(sw == 5'b00001) seg7 = 7'h40;
	else if (sw == 5'b00001) seg7 = 7'h79;
	else if (sw == 5'b00100) seg7 = 7'h24;
	else if (sw == 5'b01000) seg7 = 7'h30;
	else if (sw == 5'b10000) seg7 = 7'h19;
	else seg7 = 7'h7E;
endmodule
