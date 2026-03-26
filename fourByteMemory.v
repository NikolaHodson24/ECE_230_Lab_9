`timescale 1ns / 1ps
module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire enable0;
wire [7:0] data0;
wire [7:0] memory0;

wire enable1;
wire [7:0] data1;
wire [7:0] memory1;

wire enable2;
wire [7:0] data2;
wire [7:0] memory2;

wire enable3;
wire [7:0] data3;
wire [7:0] memory3;

demux enable(
.in(store),
.sel(addr[1:0]),
.A(enable0),
.B(enable1),
.C(enable2),
.D(enable3)
);

demux8 d(
.in(data[7:0]),
.sel(addr[1:0]),
.A(data0),
.B(data1),
.C(data2),
.D(data3)
);

byte_memory byte0(
.data(data0[7:0]),
.store(enable0),
.memory(memory0[7:0])
);

byte_memory byte1(
.data(data1[7:0]),
.store(enable1),
.memory(memory1[7:0])
);

byte_memory byte2(
.data(data2[7:0]),
.store(enable2),
.memory(memory2[7:0])
);

byte_memory byte3(
.data(data3[7:0]),
.store(enable3),
.memory(memory3[7:0])
);

mux m(
.A(memory0[7:0]),
.B(memory1[7:0]),
.C(memory2[7:0]),
.D(memory3[7:0]),
.sel(addr[1:0]),
.out(memory[7:0])
);
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule
