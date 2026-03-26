module demux1to4_1bit(
    input in,
    input [1:0] sel,
    output reg out0,
    output reg out1,
    output reg out2,
    output reg out3
);

    always @(*) begin
        case (sel)
            2'b00: {out3, out2, out1, out0} <= {1'b0, 1'b0, 1'b0, in};
            2'b01: {out3, out2, out1, out0} <= {1'b0, 1'b0, in, 1'b0};
            2'b10: {out3, out2, out1, out0} <= {1'b0, in, 1'b0, 1'b0};
            2'b11: {out3, out2, out1, out0} <= {in, 1'b0, 1'b0, 1'b0};
        endcase
    end

endmodule

//NOTES:
//- Exactly one store line is asserted.
//- The others are driven to zero.