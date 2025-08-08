`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2023 09:04:52 PM
// Design Name: 
// Module Name: twobit_tb
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


module twobit_tb;
reg [1:0] a,b;
wire agtb,aeqb,altb;
two_bit compare(a,b,altb,aeqb,agtb);
initial begin
a = 2'b11;
b = 2'b11;
#2
a = 2'b10;
#2
b = 2'b10;
#2
a = 2'b11;
#2
$stop;
end
endmodule
