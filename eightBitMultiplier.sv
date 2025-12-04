`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 06:23:03 PM
// Design Name: 
// Module Name: eightBitMultiplier
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


module eightBitMultiplier(
    input logic CLK,
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [7:0] Out,
    output logic C
    );
    
    // vedic multipliers
    logic [1:0] a1a0;
    logic [1:0] b1b0;
    assign a1a0 = A[1:0];
    assign b1b0 = B[1:0];
    logic [3:0] multOut1;
    vedicMultiplier multiplier1(
        .A(a1a0),
        .B(b1b0),
        .Out(multOut1)
    );

    logic [1:0] b3b2;
    assign b3b2 = B[3:2];
    logic [3:0] multOut2;
    vedicMultiplier multiplier2(
        .A(a1a0),
        .B(b3b2),
        .Out(multOut2)
    );
    
    logic [1:0] a3a2;
    assign a3a2 = A[3:2];
    logic [3:0] multOut3;
    vedicMultiplier multiplier3(
        .A(a3a2),
        .B(b1b0),
        .Out(multOut3)
    );
    
    logic [3:0] multOut4;
    vedicMultiplier multiplier4(
        .A(a3a2),
        .B(b3b2),
        .Out(multOut4)
    );
    
    // adder stages
    logic [3:0] addOut1;
    logic cOut1;
    fourBitRCA adder1(
        .A(multOut2),
        .B(multOut3),
        .Cin(1'b0),
        .S(addOut1),
        .Cout(cOut1)
    );
    
    logic [3:0] addOut2;
    logic cOut2;
    fourBitRCA adder2(
        .A({2'b00, multOut1[3:2]}),
        .B(addOut1),
        .Cin(cOut1),
        .S(addOut2),
        .Cout(cOut2)
    );
    
    logic [3:0] addOut3;
    logic cOut3;
    fourBitRCA adder3(
        .A(multOut4),
        .B({cOut1, 1'b0, addOut2[3], addOut2[2]}),
        .Cin(cOut2),
        .S(addOut3),
        .Cout(cOut3)
    );
    
    // calculate bit 0 and bit 1
    assign Out[0] = multOut1[0];
    assign Out[1] = multOut1[1];
    
    // calculate bit 2 and bit 3
    assign Out[2] = addOut2[0];
    assign Out[3] = addOut2[1];
    
    // calculate bit 4, bit 5, bit 6, bit 7, and carry out
    assign Out[4] = addOut3[0];
    assign Out[5] = addOut3[1];
    assign Out[6] = addOut3[2];
    assign Out[7] = addOut3[3];
    assign C = cOut3;
    
endmodule
