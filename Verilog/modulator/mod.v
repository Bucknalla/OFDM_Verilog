//--------------------------------------------------------------------------------
//Date        : Thu Mar  1 12:33:38 2018
//Author      : Alex Bucknall
//Title       : Modulator
//Design      : OFDM Baseband
//Purpose     : OFDM Constellation Modulator
//--------------------------------------------------------------------------------

module modulator(
    clk,
    rst,
    bitstream_signal_in,
    modulate_signal_out,
    quadrature,
    );

input [5:0] quadrature
parameter bits=2;
input clk;
input reg [bits-1:0] bitstream_signal_in = 0;
output [31:0] modulate_signal_out = 0;



always @ (posedge clk) begin
    if (rst) begin
        modulate_signal_out <= 1'b0;
    end
end

endmodule;

// Select Quadrature Type

// QAM 4

module QAM4(
    input clk,
    input [1:0] signal_in,
    output [1:0] signal_out
);

always @ (posedge clk) begin
    if (rst) begin
        signal_out <= 1'b0;
    end
    else begin
        case (signal_in) 
            0 : signal_out = a; // 1 + 1j
            1 : signal_out = b; // 1 + -1j
            2 : signal_out = c; // -1 + 1j
            3 : signal_out = d; // -1 + -1j
            default : $display("Error in SEL"); 
        endcase 
    end
end

// QAM 4

endmodule