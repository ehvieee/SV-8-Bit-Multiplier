`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jimmy Wen
// 
// Create Date: 12/03/2025 06:28:32 PM
// Design Name: 
// Module Name: halfAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: single bit half adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfAdder(
    input logic A,
    input logic B,
    output logic S,
    output logic C
    );
    
    always_comb begin
        S = A ^ B;
        C = A & B;
    end
    
endmodule
