//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Thu Mar 29 11:28:26 2018
//Host        : Alex-Ubuntu running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK,
    CONFIG_AXI_INTR_araddr,
    CONFIG_AXI_INTR_arprot,
    CONFIG_AXI_INTR_arready,
    CONFIG_AXI_INTR_arvalid,
    CONFIG_AXI_INTR_awaddr,
    CONFIG_AXI_INTR_awprot,
    CONFIG_AXI_INTR_awready,
    CONFIG_AXI_INTR_awvalid,
    CONFIG_AXI_INTR_bready,
    CONFIG_AXI_INTR_bresp,
    CONFIG_AXI_INTR_bvalid,
    CONFIG_AXI_INTR_rdata,
    CONFIG_AXI_INTR_rready,
    CONFIG_AXI_INTR_rresp,
    CONFIG_AXI_INTR_rvalid,
    CONFIG_AXI_INTR_wdata,
    CONFIG_AXI_INTR_wready,
    CONFIG_AXI_INTR_wstrb,
    CONFIG_AXI_INTR_wvalid,
    CONFIG_AXI_araddr,
    CONFIG_AXI_arprot,
    CONFIG_AXI_arready,
    CONFIG_AXI_arvalid,
    CONFIG_AXI_awaddr,
    CONFIG_AXI_awprot,
    CONFIG_AXI_awready,
    CONFIG_AXI_awvalid,
    CONFIG_AXI_bready,
    CONFIG_AXI_bresp,
    CONFIG_AXI_bvalid,
    CONFIG_AXI_rdata,
    CONFIG_AXI_rready,
    CONFIG_AXI_rresp,
    CONFIG_AXI_rvalid,
    CONFIG_AXI_wdata,
    CONFIG_AXI_wready,
    CONFIG_AXI_wstrb,
    CONFIG_AXI_wvalid,
    DATA_IN_AXIS_tdata,
    DATA_IN_AXIS_tlast,
    DATA_IN_AXIS_tready,
    DATA_IN_AXIS_tstrb,
    DATA_IN_AXIS_tvalid,
    DATA_OUT_AXIS_tdata,
    DATA_OUT_AXIS_tlast,
    DATA_OUT_AXIS_tready,
    DATA_OUT_AXIS_tstrb,
    DATA_OUT_AXIS_tvalid,
    RST);
  input CLK;
  input [4:0]CONFIG_AXI_INTR_araddr;
  input [2:0]CONFIG_AXI_INTR_arprot;
  output CONFIG_AXI_INTR_arready;
  input CONFIG_AXI_INTR_arvalid;
  input [4:0]CONFIG_AXI_INTR_awaddr;
  input [2:0]CONFIG_AXI_INTR_awprot;
  output CONFIG_AXI_INTR_awready;
  input CONFIG_AXI_INTR_awvalid;
  input CONFIG_AXI_INTR_bready;
  output [1:0]CONFIG_AXI_INTR_bresp;
  output CONFIG_AXI_INTR_bvalid;
  output [31:0]CONFIG_AXI_INTR_rdata;
  input CONFIG_AXI_INTR_rready;
  output [1:0]CONFIG_AXI_INTR_rresp;
  output CONFIG_AXI_INTR_rvalid;
  input [31:0]CONFIG_AXI_INTR_wdata;
  output CONFIG_AXI_INTR_wready;
  input [3:0]CONFIG_AXI_INTR_wstrb;
  input CONFIG_AXI_INTR_wvalid;
  input [5:0]CONFIG_AXI_araddr;
  input [2:0]CONFIG_AXI_arprot;
  output CONFIG_AXI_arready;
  input CONFIG_AXI_arvalid;
  input [5:0]CONFIG_AXI_awaddr;
  input [2:0]CONFIG_AXI_awprot;
  output CONFIG_AXI_awready;
  input CONFIG_AXI_awvalid;
  input CONFIG_AXI_bready;
  output [1:0]CONFIG_AXI_bresp;
  output CONFIG_AXI_bvalid;
  output [31:0]CONFIG_AXI_rdata;
  input CONFIG_AXI_rready;
  output [1:0]CONFIG_AXI_rresp;
  output CONFIG_AXI_rvalid;
  input [31:0]CONFIG_AXI_wdata;
  output CONFIG_AXI_wready;
  input [3:0]CONFIG_AXI_wstrb;
  input CONFIG_AXI_wvalid;
  input [31:0]DATA_IN_AXIS_tdata;
  input DATA_IN_AXIS_tlast;
  output DATA_IN_AXIS_tready;
  input [3:0]DATA_IN_AXIS_tstrb;
  input DATA_IN_AXIS_tvalid;
  output [31:0]DATA_OUT_AXIS_tdata;
  output DATA_OUT_AXIS_tlast;
  input DATA_OUT_AXIS_tready;
  output [3:0]DATA_OUT_AXIS_tstrb;
  output DATA_OUT_AXIS_tvalid;
  input RST;

  wire CLK;
  wire [4:0]CONFIG_AXI_INTR_araddr;
  wire [2:0]CONFIG_AXI_INTR_arprot;
  wire CONFIG_AXI_INTR_arready;
  wire CONFIG_AXI_INTR_arvalid;
  wire [4:0]CONFIG_AXI_INTR_awaddr;
  wire [2:0]CONFIG_AXI_INTR_awprot;
  wire CONFIG_AXI_INTR_awready;
  wire CONFIG_AXI_INTR_awvalid;
  wire CONFIG_AXI_INTR_bready;
  wire [1:0]CONFIG_AXI_INTR_bresp;
  wire CONFIG_AXI_INTR_bvalid;
  wire [31:0]CONFIG_AXI_INTR_rdata;
  wire CONFIG_AXI_INTR_rready;
  wire [1:0]CONFIG_AXI_INTR_rresp;
  wire CONFIG_AXI_INTR_rvalid;
  wire [31:0]CONFIG_AXI_INTR_wdata;
  wire CONFIG_AXI_INTR_wready;
  wire [3:0]CONFIG_AXI_INTR_wstrb;
  wire CONFIG_AXI_INTR_wvalid;
  wire [5:0]CONFIG_AXI_araddr;
  wire [2:0]CONFIG_AXI_arprot;
  wire CONFIG_AXI_arready;
  wire CONFIG_AXI_arvalid;
  wire [5:0]CONFIG_AXI_awaddr;
  wire [2:0]CONFIG_AXI_awprot;
  wire CONFIG_AXI_awready;
  wire CONFIG_AXI_awvalid;
  wire CONFIG_AXI_bready;
  wire [1:0]CONFIG_AXI_bresp;
  wire CONFIG_AXI_bvalid;
  wire [31:0]CONFIG_AXI_rdata;
  wire CONFIG_AXI_rready;
  wire [1:0]CONFIG_AXI_rresp;
  wire CONFIG_AXI_rvalid;
  wire [31:0]CONFIG_AXI_wdata;
  wire CONFIG_AXI_wready;
  wire [3:0]CONFIG_AXI_wstrb;
  wire CONFIG_AXI_wvalid;
  wire [31:0]DATA_IN_AXIS_tdata;
  wire DATA_IN_AXIS_tlast;
  wire DATA_IN_AXIS_tready;
  wire [3:0]DATA_IN_AXIS_tstrb;
  wire DATA_IN_AXIS_tvalid;
  wire [31:0]DATA_OUT_AXIS_tdata;
  wire DATA_OUT_AXIS_tlast;
  wire DATA_OUT_AXIS_tready;
  wire [3:0]DATA_OUT_AXIS_tstrb;
  wire DATA_OUT_AXIS_tvalid;
  wire RST;

  design_1 design_1_i
       (.CLK(CLK),
        .CONFIG_AXI_INTR_araddr(CONFIG_AXI_INTR_araddr),
        .CONFIG_AXI_INTR_arprot(CONFIG_AXI_INTR_arprot),
        .CONFIG_AXI_INTR_arready(CONFIG_AXI_INTR_arready),
        .CONFIG_AXI_INTR_arvalid(CONFIG_AXI_INTR_arvalid),
        .CONFIG_AXI_INTR_awaddr(CONFIG_AXI_INTR_awaddr),
        .CONFIG_AXI_INTR_awprot(CONFIG_AXI_INTR_awprot),
        .CONFIG_AXI_INTR_awready(CONFIG_AXI_INTR_awready),
        .CONFIG_AXI_INTR_awvalid(CONFIG_AXI_INTR_awvalid),
        .CONFIG_AXI_INTR_bready(CONFIG_AXI_INTR_bready),
        .CONFIG_AXI_INTR_bresp(CONFIG_AXI_INTR_bresp),
        .CONFIG_AXI_INTR_bvalid(CONFIG_AXI_INTR_bvalid),
        .CONFIG_AXI_INTR_rdata(CONFIG_AXI_INTR_rdata),
        .CONFIG_AXI_INTR_rready(CONFIG_AXI_INTR_rready),
        .CONFIG_AXI_INTR_rresp(CONFIG_AXI_INTR_rresp),
        .CONFIG_AXI_INTR_rvalid(CONFIG_AXI_INTR_rvalid),
        .CONFIG_AXI_INTR_wdata(CONFIG_AXI_INTR_wdata),
        .CONFIG_AXI_INTR_wready(CONFIG_AXI_INTR_wready),
        .CONFIG_AXI_INTR_wstrb(CONFIG_AXI_INTR_wstrb),
        .CONFIG_AXI_INTR_wvalid(CONFIG_AXI_INTR_wvalid),
        .CONFIG_AXI_araddr(CONFIG_AXI_araddr),
        .CONFIG_AXI_arprot(CONFIG_AXI_arprot),
        .CONFIG_AXI_arready(CONFIG_AXI_arready),
        .CONFIG_AXI_arvalid(CONFIG_AXI_arvalid),
        .CONFIG_AXI_awaddr(CONFIG_AXI_awaddr),
        .CONFIG_AXI_awprot(CONFIG_AXI_awprot),
        .CONFIG_AXI_awready(CONFIG_AXI_awready),
        .CONFIG_AXI_awvalid(CONFIG_AXI_awvalid),
        .CONFIG_AXI_bready(CONFIG_AXI_bready),
        .CONFIG_AXI_bresp(CONFIG_AXI_bresp),
        .CONFIG_AXI_bvalid(CONFIG_AXI_bvalid),
        .CONFIG_AXI_rdata(CONFIG_AXI_rdata),
        .CONFIG_AXI_rready(CONFIG_AXI_rready),
        .CONFIG_AXI_rresp(CONFIG_AXI_rresp),
        .CONFIG_AXI_rvalid(CONFIG_AXI_rvalid),
        .CONFIG_AXI_wdata(CONFIG_AXI_wdata),
        .CONFIG_AXI_wready(CONFIG_AXI_wready),
        .CONFIG_AXI_wstrb(CONFIG_AXI_wstrb),
        .CONFIG_AXI_wvalid(CONFIG_AXI_wvalid),
        .DATA_IN_AXIS_tdata(DATA_IN_AXIS_tdata),
        .DATA_IN_AXIS_tlast(DATA_IN_AXIS_tlast),
        .DATA_IN_AXIS_tready(DATA_IN_AXIS_tready),
        .DATA_IN_AXIS_tstrb(DATA_IN_AXIS_tstrb),
        .DATA_IN_AXIS_tvalid(DATA_IN_AXIS_tvalid),
        .DATA_OUT_AXIS_tdata(DATA_OUT_AXIS_tdata),
        .DATA_OUT_AXIS_tlast(DATA_OUT_AXIS_tlast),
        .DATA_OUT_AXIS_tready(DATA_OUT_AXIS_tready),
        .DATA_OUT_AXIS_tstrb(DATA_OUT_AXIS_tstrb),
        .DATA_OUT_AXIS_tvalid(DATA_OUT_AXIS_tvalid),
        .RST(RST));
endmodule
