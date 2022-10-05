`timescale 1ns / 1ps

// Test Bench

module tb_gates2();

    reg i_switch_0, i_switch_1;
    wire o_and, o_nand, o_nor, o_not, o_or, o_xor;

    gates2 dut(
    .i_switch_0(i_switch_0),
    .i_switch_1(i_switch_1),

    .o_and(o_and),
    .o_nand(o_nand),
    .o_or(o_or),
    .o_nor(o_nor),
    .o_xor(o_xor),
    .o_not(o_not)
    
    );

    initial begin
        #00 i_switch_0 = 1'b0; i_switch_1 = 1'b0;
        #10 i_switch_0 = 1'b0; i_switch_1 = 1'b1;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b0;
        #10 i_switch_0 = 1'b1; i_switch_1 = 1'b1;
        #10 $finish;
    end

endmodule
