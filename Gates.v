`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:01 05/16/2021 
// Design Name: 
// Module Name:    Gates 
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
module bit32And (out, in1, in2);
	input [31:0] in1, in2;
	output [31:0] out;
	
	assign {out} = in1 & in2;

endmodule

module bit32Or (out, in1, in2);
	input [31:0] in1, in2;
	output [31:0] out;
	
	assign {out} = in1 | in2;
	
endmodule