
module mux(
    input [7:0] A,[7:0] B,[7:0] C,[7:0] D, 
    input [1:0] sel, 
    input en,
    output [7:0]out
    );
    
    assign out = en ? (sel==0 ? A:
                       sel==1 ? B:
                       sel==2 ? C:
                       sel==3 ? D:0) : 0;
    
endmodule
