`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2023 05:18:21 PM
// Design Name: 
// Module Name: 4bit_ripple_carry
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bit_ripple_carry(a,b,c_in,s,c_out);
input [3:0] a,b;
input c_in;
wire [3:1] c_wire;
output [3:0] s;
output c_out;
fulladder fa1(a[0],b[0],c_in,c_wire[1],s[0]);
fulladder fa2(a[1],b[1],c_wire[1],c_wire[2],s[1]);
fulladder fa3(a[2],b[2],c_wire[2],c_wire[3],s[2]);
fulladder fa4(a[3],b[3],c_wire[3],c_out,s[3]);
endmodule
