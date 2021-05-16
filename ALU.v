`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:23 05/16/2021 
// Design Name: 
// Module Name:    ALU 
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
`include "Adder.v"
`include "Mux.v"
`include "Gates.v"

module ALU(in1, in2, Binvert, Cin, Operation, Result, Carry);
	input [31:0] in1, in2;
	input [1:0] Operation;
	input Binvert, Cin;
	output [31:0] Result;
	output Carry;
	wire [31:0] not_in2, mux_out, and_out, or_out, sum;
	wire newc;
	
	mux2to1 m1(newc, Operation[1], Cin, 1'b1);
	bit32Not n1(not_in2, in2);
	bit32_2to1mux b0(mux_out, Binvert, in2, not_in2);
	thirtytwoBitFullAdder fa(sum, Carry, in1, mux_out, newc);
	bit32And a1(and_out, in1, mux_out);
	bit32Or o1(or_out, in1, mux_out);
	bit32_3to1mux b1(Result, Operation, and_out, or_out, sum);
	
endmodule