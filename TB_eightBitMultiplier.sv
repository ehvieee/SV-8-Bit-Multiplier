`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 10:16:30 PM
// Design Name: 
// Module Name: TB_eightBitMultiplier
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


module TB_eightBitMultiplier();

logic [3:0] TB_A, TB_B;
logic [7:0] TB_Out;
logic TB_C;
logic TB_CLK;

always begin
    TB_CLK = 1'b1;
    #5;
    TB_CLK = 1'b0;
    #5;
end

eightBitMultiplier DUT(
    .CLK(TB_CLK),
    .A(TB_A),
    .B(TB_B),
    .Out(TB_Out),
    .C(TB_C)
);

integer i, j;
initial begin
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            TB_A = i;
            TB_B = j;
            #10;
        end
    end
    
    TB_A = 0;
    TB_B = 0;
    #10;
    
end

endmodule