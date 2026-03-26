`timescale 1ns / 1ps

module demux8(
    input [7:0] in, 
    input [1:0] sel, 
    input en,
    output [7:0]A,[7:0]B,[7:0]C,[7:0]D
    );
    
    assign A = (en == 1 && sel == 0) ? in : 0;
    assign B = (en == 1 && sel == 1) ? in : 0;
    assign C = (en == 1 && sel == 2) ? in : 0;
    assign D = (en == 1 && sel == 3) ? in : 0;
    
endmodule
