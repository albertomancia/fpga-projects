`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/19/2019 04:08:51 PM
// Design Name: 
// Module Name: Blinky
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


module Blinky(
    input clk,
    output led0_r, led0_g, led0_b
    );

reg [28:0] count = 0;

 
assign led0_g = count[28];
assign led0_b = count[27];
assign led0_r = count[26];
 
always @ (posedge(clk)) count <= count + 1;

endmodule
