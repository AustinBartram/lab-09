
module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);

    always @(data, store) begin
        if (store)
            memory <= data;
    end

endmodule

//NOTES:
//It behaves like an 8-bit latch.
//It stores when "store" is high.
//It holds its value otherwise.
