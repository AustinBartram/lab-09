module mux4to1_8bit(
    input [7:0] in0,
    input [7:0] in1,
    input [7:0] in2,
    input [7:0] in3,
    input [1:0] sel,
    output reg [7:0] out
);

// Any time the inputs to this combinational logic change, 
// , look at sel, and choose which input should be copied to out.
    always @(*) begin   // Re-run this block whenever anything it depends on changes.
                        // (sel, in0, in1, in2, or in3)
        case (sel)          // sel is 2 bits wide (can be either 00, 01, 10, or 11)
            2'b00: out <= in0;  // 00; Assign in0 to out
                                // So if sel == 2'b00, then out gets in0.
            2'b01: out <= in1;  // 01
            2'b10: out <= in2;  // 10
            2'b11: out <= in3;  // 11
        endcase
    end

endmodule



//NOTES:
//- Selects one of four 8-bit stored values based on sel
//- Sends the selected byte to the output

//- one output: out
//- four possible inputs: in0, in1, in2, in3
//- one select signal: sel