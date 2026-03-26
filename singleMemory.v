`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2026 04:51:46 PM
// Design Name: 
// Module Name: singleMemory
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


module d_latch(
    input D , E,
    output reg Q ,
    output NotQ
    );
    
    always @(D , E) begin
        if (D&E)
            Q<=1;
        else if(E&~D)
            Q<=0;
            
    end
    
    assign NotQ = ~Q;
    
    
endmodule
