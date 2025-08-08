`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2023 04:33:32 PM
// Design Name: 
// Module Name: ex1_tb
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


module ex1_tb();
reg clk;
wire blue_light,red_light;
initial begin 
forever #1 clk = ~clk;
end
initial begin
clk = 0;

end
work_space somthig(clk,blue_light,red_light);

endmodule
