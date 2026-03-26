module d_latch(
    input D,
    input E,
    output reg Q,
    output NotQ
);

    always @(*) begin
        if (E) begin
            Q <= D;
    end
    end

    assign NotQ = ~Q;

endmodule
// NOTES:
// Q only changes when E is high.
// When E is low, no assignment happens, so it holds state.
// NotQ is the inverse of Q.