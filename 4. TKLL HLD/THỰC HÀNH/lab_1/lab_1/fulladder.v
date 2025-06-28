`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2023 04:47:31 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(a,b,c_in,c_out,sum); 
input a,b,c_in;
output c_out, sum;
wire sumha1,carryha1;
wire carryha2;
half_adder ha1(a,b,sumha1,carryha1);
half_adder ha2(sumha1,c_in,sum,carryha2);
or or0(c_out,carryha1,carryha2);
endmodule
