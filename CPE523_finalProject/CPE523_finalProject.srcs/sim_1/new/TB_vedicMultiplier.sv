`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 06:39:27 PM
// Design Name: 
// Module Name: TB_vedicMultiplier
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


module TB_vedicMultiplier();

logic [1:0] TB_A, TB_B;
logic [3:0] TB_Out;

vedicMultiplier DUT(
    .A(TB_A),
    .B(TB_B),
    .Out(TB_Out)
);

initial begin
    TB_A = 2'b00;
    TB_B = 2'b00;
    #10;
    
    TB_A = 2'b01;
    TB_B = 2'b00;
    #10;
    
    TB_A = 2'b10;
    TB_B = 2'b00;
    #10;
    
    TB_A = 2'b11;
    TB_B = 2'b00;
    #10;
    
    TB_A = 2'b00;
    TB_B = 2'b01;
    #10;
    
    TB_A = 2'b01;
    TB_B = 2'b01;
    #10;
    
    TB_A = 2'b10;
    TB_B = 2'b01;
    #10;
    
    TB_A = 2'b11;
    TB_B = 2'b01;
    #10;
    
    TB_A = 2'b00;
    TB_B = 2'b10;
    #10;
    
    TB_A = 2'b01;
    TB_B = 2'b10;
    #10;
    
    TB_A = 2'b10;
    TB_B = 2'b10;
    #10;
    
    TB_A = 2'b11;
    TB_B = 2'b10;
    #10;
    
    TB_A = 2'b00;
    TB_B = 2'b11;
    #10;
    
    TB_A = 2'b01;
    TB_B = 2'b11;
    #10;
    
    TB_A = 2'b10;
    TB_B = 2'b11;
    #10;
    
    TB_A = 2'b11;
    TB_B = 2'b11;
    #10;
end

endmodule
