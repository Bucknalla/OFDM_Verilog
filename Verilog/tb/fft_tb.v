`timescale 1us / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: UoW
// Engineer: Alex Bucknall
// 
// Create Date: 26.02.2018 12:25:58
// Design Name: 
// Module Name: fft_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fft_tb();
    
    reg aclk;
    reg [10:0] counter;
    wire [31:0]M_AXIS_DATA_tdata;
    wire M_AXIS_DATA_tlast;
    reg M_AXIS_DATA_tready;
    wire M_AXIS_DATA_tvalid;
    reg [7:0]S_AXIS_CONFIG_tdata;
    wire S_AXIS_CONFIG_tready;
    reg S_AXIS_CONFIG_tvalid;
    reg [31:0]S_AXIS_DATA_tdata;
    reg S_AXIS_DATA_tlast;
    wire S_AXIS_DATA_tready;
    reg S_AXIS_DATA_tvalid;
    wire event_data_in_channel_halt;
    wire event_data_out_channel_halt;
    wire event_frame_started;
    wire event_status_channel_halt;
    wire event_tlast_missing;
    wire event_tlast_unexpected;
    
    fft ifft_i (
        .M_AXIS_DATA_tdata(M_AXIS_DATA_tdata),
        .M_AXIS_DATA_tlast(M_AXIS_DATA_tlast),
        .M_AXIS_DATA_tready(M_AXIS_DATA_tready),
        .M_AXIS_DATA_tvalid(M_AXIS_DATA_tvalid),
        .S_AXIS_CONFIG_tdata(S_AXIS_CONFIG_tdata),
        .S_AXIS_CONFIG_tready(S_AXIS_CONFIG_tready),
        .S_AXIS_CONFIG_tvalid(S_AXIS_CONFIG_tvalid),
        .S_AXIS_DATA_tdata(S_AXIS_DATA_tdata),
        .S_AXIS_DATA_tlast(S_AXIS_DATA_tlast),
        .S_AXIS_DATA_tready(S_AXIS_DATA_tready),
        .S_AXIS_DATA_tvalid(S_AXIS_DATA_tvalid),
        .aclk(aclk),
        .event_data_in_channel_halt(event_data_in_channel_halt),
        .event_data_out_channel_halt(event_data_out_channel_halt),
        .event_frame_started(event_frame_started),
        .event_status_channel_halt(event_status_channel_halt),
        .event_tlast_missing(event_tlast_missing),
        .event_tlast_unexpected(event_tlast_unexpected)
    );

    // CLK GENERATION
    always
    begin
        aclk = 1'b1;
        #10 aclk = 1'b0;
        #10;
    end

    always
    begin
        if(counter == 1024)
        begin
            S_AXIS_DATA_tlast = 1'b1;
            #20 S_AXIS_DATA_tvalid = 1'b0;
        end
        #1;
    end
    // S_AXIS_CONFIG
    initial 
    begin
        S_AXIS_CONFIG_tvalid = 1'b1;
        S_AXIS_CONFIG_tdata = 24'b000000000000000000000000; // 00000 PAD | 100 FWD/INV | 0 PAD | 0000000 CP_LEN | 000 PAD | 00011 NFFT 
        // #20 S_AXIS_CONFIG_tdata = 24'b000001000000000000000011; // 00000 PAD | 100 FWD/INV | 0 PAD | 0000000 CP_LEN | 000 PAD | 00011 NFFT 
        #20 S_AXIS_CONFIG_tvalid = 1'b0;
    end    

    // S_AXIS_DATA (INPUT)
    initial
    begin
        counter = 11'b0;
        S_AXIS_DATA_tvalid = 1'b1; 
        S_AXIS_DATA_tlast = 1'b0;     
        S_AXIS_DATA_tdata = 32'b00000000000000000000000000000000; // 0000 PAD | XK_IM | 0000 PAD | XK_RE
        #2;  
        repeat(513)
        begin
            #20 S_AXIS_DATA_tdata = 32'b00001011111001100000001011011001; // 0000 PAD | XK_IM | 0000 PAD | XK_RE
            counter = counter + 1'b1;
            #20 S_AXIS_DATA_tdata = 32'b00001010000001100000001011000001;
            counter = counter + 1'b1;
        end      
        #20 counter = counter + 1'b1;

        // S_AXIS_DATA_tvalid = 1'b0;
        // S_AXIS_DATA_tlast = 1'b1;     

        // #100 S_AXIS_DATA_tlast = 1'b1;

        #200000 $finish;
    end

    // M_AXIS_DATA (OUTPUT)
    initial
    begin
        M_AXIS_DATA_tready = 1'b1;   
    end
    
endmodule
