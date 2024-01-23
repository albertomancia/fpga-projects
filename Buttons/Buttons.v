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
    input btn0, btn1,
    output led0_b, led0_r
    );


assign led0_r = btn0;
assign led0_b = btn1;
 
endmodule
