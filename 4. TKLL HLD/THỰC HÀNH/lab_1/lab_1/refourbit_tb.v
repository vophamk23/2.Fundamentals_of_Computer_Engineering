`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2023 10:58:44 AM
// Design Name: 
// Module Name: refourbit_tb
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


module refourbit_tb;
reg [3:0] a,b;
wire a_lt_b,a_eq_b,a_gt_b;
refourbit test(a,b,a_lt_b,a_eq_b,a_gt_b);
initial begin
a = 4'b1111;
b = 4'b1111;
#2
a = 4'b1110;
#2 
b = 4'b1000;
#2
a = 4'b1000;
#5
$stop;
end
endmodule
