`timescale 1ns / 1ps
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
    
    reg aclk,rst; 
    wire [31:0]M_AXIS_DATA_tdata;
    wire M_AXIS_DATA_tlast;
    reg M_AXIS_DATA_tready;
    wire M_AXIS_DATA_tvalid;
    reg [23:0]S_AXIS_CONFIG_tdata;
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
    
    fft fft_i (
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
    
    initial 
    begin
        aclk = 1'b0;
        rst = 1'b1;
        repeat(4) #10 aclk = ~aclk;
        rst = 1'b0;
        forever #10 aclk = ~aclk; // generate a clock
    end    

    initial
    begin
        #60 S_AXIS_CONFIG_tdata = 24'b000001000100000000000011;
        S_AXIS_CONFIG_tvalid = 1'b1;
    end
    
endmodule
