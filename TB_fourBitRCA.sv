`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2025 07:38:38 PM
// Design Name: 
// Module Name: TB_fourBitRCA
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


module TB_fourBitRCA();

logic [3:0] TB_A, TB_B;
logic TB_Cin = 1'b0;
logic [3:0] TB_S;
logic TB_Cout;

fourBitRCA DUT(
    .A(TB_A),
    .B(TB_B),
    .Cin(TB_Cin),
    .S(TB_S),
    .Cout(TB_Cout)
);

always begin
    TB_A = 4'b0000;
    TB_B = 4'b0000;
    #10;
    
    TB_A = 4'b0001;
    TB_B = 4'b0000;
    #10;
    
    TB_A = 4'b0000;
    TB_B = 4'b0001;
    #10;
    
    TB_A = 4'b0001;
    TB_B = 4'b0001;
    #10;
    
    TB_A = 4'b0010;
    TB_B = 4'b0001;
    #10;
    
    TB_A = 4'b0100;
    TB_B = 4'b0010;
    #10;
    
    TB_A = 4'b1000;
    TB_B = 4'b1000;
    #10;
    
    TB_A = 4'b1111;
    TB_B = 4'b1111;
    #10;
    
    TB_A = 4'b1110;
    TB_B = 4'b1111;
    #10;
    
    TB_A = 4'b0111;
    TB_B = 4'b0111;
    #10;
    
    TB_A = 4'b1000;
    TB_B = 4'b0111;
    #10;
    
end

endmodule
