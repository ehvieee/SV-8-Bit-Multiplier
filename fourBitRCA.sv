`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Jimmy Wen
// 
// Create Date: 12/03/2025 07:30:49 PM
// Design Name: 
// Module Name: fourBitRCA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: four bit ripple-carry adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourBitRCA(
    input logic [3:0] A,
    input logic [3:0] B,
    input logic Cin,
    output logic [3:0] S,
    output logic Cout
    );
    
    // calculate bit 0
    logic c1;
    halfAdder adder1(
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .S(S[0]),
        .Cout(c1)
    );
    
    // calculate bit 1
    logic c2;
    halfAdder adder2(
        .A(A[1]),
        .B(B[1]),
        .Cin(c1),
        .S(S[1]),
        .Cout(c2)
    );
    
    // calculate bit 2
    logic c3;
    halfAdder adder3(
        .A(A[2]),
        .B(B[2]),
        .Cin(c2),
        .S(S[2]),
        .Cout(c3)
    );
    
    // calculate bit 3 and final carry out
    halfAdder adder4(
        .A(A[3]),
        .B(B[3]),
        .Cin(c3),
        .S(S[3]),
        .Cout(Cout)
    );
    
endmodule
