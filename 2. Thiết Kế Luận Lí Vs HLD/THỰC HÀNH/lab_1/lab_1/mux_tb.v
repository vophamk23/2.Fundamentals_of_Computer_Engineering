`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2023 03:20:07 PM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg in0,in1;
reg select;
wire out;
mux2to1 forfun(out, in0, in1, select);
initial begin
    $monitor("Time: %t, input0: %b, input1: %b, select:%b,output: %b", $time , in0, in1, select, out);
end 
initial begin
 in0 = 1'b0;
 in1 = 1'b0;
 select = 1'b0;
 #2 in0 = 1'b1;
 #2 select = 1'b1;
 #5 $stop;
 end
endmodule
