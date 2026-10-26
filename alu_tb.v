// Code your testbench here
// or browse Examples

`timescale 1ns/1ps

module alu_tb;

reg  [3:0] A, B;
reg  [2:0] sel;
wire [3:0] result;
wire carry;

alu dut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    A = 4'd5;
    B = 4'd3;

    sel = 3'b000; #10;
    $display("ADD: result=%d carry=%b", result, carry);

    sel = 3'b001; #10;
    $display("SUB: result=%d carry=%b", result, carry);

    sel = 3'b010; #10;
    $display("AND: result=%d", result);

    sel = 3'b011; #10;
    $display("OR: result=%d", result);

    sel = 3'b100; #10;
    $display("XOR: result=%d", result);

    sel = 3'b101; #10;
    $display("NOT A: result=%d", result);

    #10;
    $finish;
end

endmodule
