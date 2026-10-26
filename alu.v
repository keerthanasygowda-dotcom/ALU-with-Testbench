// Code your design here

module alu (
    input  wire [3:0] A,
    input  wire [3:0] B,
    input  wire [2:0] sel,
    output reg  [3:0] result,
    output reg        carry
);

always @(*) begin
    result = 4'b0000;
    carry  = 1'b0;

    case (sel)
        3'b000: {carry, result} = A + B;
        3'b001: result = A - B;
        3'b010: result = A & B;
        3'b011: result = A | B;
        3'b100: result = A ^ B;
        3'b101: result = ~A;
        default: begin
            result = 4'b0000;
            carry  = 1'b0;
        end
    endcase
end

endmodule
