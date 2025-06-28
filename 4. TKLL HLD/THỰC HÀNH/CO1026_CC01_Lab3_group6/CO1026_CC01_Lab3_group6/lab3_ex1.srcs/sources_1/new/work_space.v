`timescale 1ns / 1ps
module lab3_tb();
   reg clk;
   reg [1:0] btn;
   wire [3:0] output_led;
   initial begin
   clk =1 ;
   forever #5 clk = ~clk;
   end
   initial begin 
   btn = 2'b00;
   #40
   btn = 2'b01;
   #40
   btn = 2'b10;
   #50
   btn = 2'b11;
   #40
   btn = 2'b00;
   #10 $stop;
   end
   workspce somthing(btn,clk,output_led);
endmodule