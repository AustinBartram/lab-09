//demultiplexed to four places. Maybe we can
//just wire data to all byte memories and only 
//demux "store".

module demux1to4_8bit(
    input  [7:0] in,
    input  [1:0] sel,
    output reg [7:0] out0,
    output reg [7:0] out1,
    output reg [7:0] out2,
    output reg [7:0] out3
);
endmodule