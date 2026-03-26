module memory_system(
    input  [7:0] data,
    input  store,
    input  [1:0] addr,
    output [7:0] memory
);

    wire [7:0] mem0, mem1, mem2, mem3;
    wire store0 = (addr == 2'b00) ? store : 1'b0;
    wire store1 = (addr == 2'b01) ? store : 1'b0;
    wire store2 = (addr == 2'b10) ? store : 1'b0;
    wire store3 = (addr == 2'b11) ? store : 1'b0;
    
    byte_memory b0 (data, store0, mem0);
    byte_memory b1 (data, store1, mem1);
    byte_memory b2 (data, store2, mem2);
    byte_memory b3 (data, store3, mem3);
    
    assign memory = (addr == 2'b00) ? mem0 :
                    (addr == 2'b01) ? mem1 :
                    (addr == 2'b10) ? mem2 :
                                      mem3;
                    

endmodule