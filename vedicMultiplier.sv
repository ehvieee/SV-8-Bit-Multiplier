`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jimmy Wen
// 
// Create Date: 12/03/2025 06:26:11 PM
// Design Name: 
// Module Name: vedicMultiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 2 x 2 vedic multiplication using half adders
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vedicMultiplier(
    input logic [1:0] A,
    input logic [1:0] B,
    output logic [3:0] Out
    );
    
    // bit 0 = a0b0
    assign Out[0] = A[0] & B[0];
    
    // compute a1b0, a0b1, and a1b1
    logic a1b0, a0b1, a1b1;
    assign a1b0 = A[1] & B[0];
    assign a0b1 = A[0] & B[1];
    assign a1b1 = A[1] & B[1];
    
    // add a1b0 + a0b1 (computes bit 1 of multiplier)
    logic c1;
    halfAdder adder1(
        .A(a1b0),
        .B(a0b1),
        .S(Out[1]),
        .C(c1)
    );
    
    // add c1 + a1b1 (computes bits 2 and 3 of multiplier)
    halfAdder adder2(
        .A(a1b1),
        .B(c1),
        .S(Out[2]),
        .C(Out[3])
    );
    
endmodule
