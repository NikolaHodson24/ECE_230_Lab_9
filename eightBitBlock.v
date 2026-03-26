`timescale 1ns / 1ps
module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);

    // Herein, implement D-Latch style memory
    
    // that stores the input data into memory
    // when store is high

    // Memory should always output the value
    // stored, and it should only change
    // when store is high
    d_latch bit0(
    .D(data[0]),
    .E(store),
    .Q(memory[0]),
    .NotQ()
    );
    
    d_latch bit1(
    .D(data[1]),
    .E(store),
    .Q(memory[1]),
    .NotQ()
    );
    
    d_latch bit2(
    .D(data[2]),
    .E(store),
    .Q(memory[2]),
    .NotQ()
    );
    
    d_latch bit3(
    .D(data[3]),
    .E(store),
    .Q(memory[3]),
    .NotQ()
    );
    
    d_latch bit4(
    .D(data[4]),
    .E(store),
    .Q(memory[4]),
    .NotQ()
    );
    
    d_latch bit5(
    .D(data[5]),
    .E(store),
    .Q(memory[5]),
    .NotQ()
    );
    
    d_latch bit6(
    .D(data[6]),
    .E(store),
    .Q(memory[6]),
    .NotQ()
    );
    
    d_latch bit7(
    .D(data[7]),
    .E(store),
    .Q(memory[7]),
    .NotQ()
    );

endmodule