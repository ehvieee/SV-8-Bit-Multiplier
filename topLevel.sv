`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 06:24:12 AM
// Design Name: 
// Module Name: topLevel
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


module topLevel(
    input  logic CLK,
    input  logic [3:0] A,
    input  logic [3:0] B,
    output logic [7:0] Out,
    output logic C
);

    logic [3:0] A_reg, B_reg;
    logic [7:0] Out_reg;
    logic C_reg;

    eightBitMultiplier multiplier(
        .A(A_reg),
        .B(B_reg),
        .Out(Out_reg),
        .C(C_reg)
    );

    always_ff @(posedge CLK) begin
        A_reg  <= A;
        B_reg  <= B;
        Out    <= Out_reg;
        C      <= C_reg;
    end
    
endmodule
