//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Thu Mar 29 11:28:26 2018
//Host        : Alex-Ubuntu running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [5:0]CONFIG_AXI_1_ARADDR;
  wire [2:0]CONFIG_AXI_1_ARPROT;
  wire CONFIG_AXI_1_ARREADY;
  wire CONFIG_AXI_1_ARVALID;
  wire [5:0]CONFIG_AXI_1_AWADDR;
  wire [2:0]CONFIG_AXI_1_AWPROT;
  wire CONFIG_AXI_1_AWREADY;
  wire CONFIG_AXI_1_AWVALID;
  wire CONFIG_AXI_1_BREADY;
  wire [1:0]CONFIG_AXI_1_BRESP;
  wire CONFIG_AXI_1_BVALID;
  wire [31:0]CONFIG_AXI_1_RDATA;
  wire CONFIG_AXI_1_RREADY;
  wire [1:0]CONFIG_AXI_1_RRESP;
  wire CONFIG_AXI_1_RVALID;
  wire [31:0]CONFIG_AXI_1_WDATA;
  wire CONFIG_AXI_1_WREADY;
  wire [3:0]CONFIG_AXI_1_WSTRB;
  wire CONFIG_AXI_1_WVALID;
  wire [4:0]CONFIG_AXI_INTR_1_ARADDR;
  wire [2:0]CONFIG_AXI_INTR_1_ARPROT;
  wire CONFIG_AXI_INTR_1_ARREADY;
  wire CONFIG_AXI_INTR_1_ARVALID;
  wire [4:0]CONFIG_AXI_INTR_1_AWADDR;
  wire [2:0]CONFIG_AXI_INTR_1_AWPROT;
  wire CONFIG_AXI_INTR_1_AWREADY;
  wire CONFIG_AXI_INTR_1_AWVALID;
  wire CONFIG_AXI_INTR_1_BREADY;
  wire [1:0]CONFIG_AXI_INTR_1_BRESP;
  wire CONFIG_AXI_INTR_1_BVALID;
  wire [31:0]CONFIG_AXI_INTR_1_RDATA;
  wire CONFIG_AXI_INTR_1_RREADY;
  wire [1:0]CONFIG_AXI_INTR_1_RRESP;
  wire CONFIG_AXI_INTR_1_RVALID;
  wire [31:0]CONFIG_AXI_INTR_1_WDATA;
  wire CONFIG_AXI_INTR_1_WREADY;
  wire [3:0]CONFIG_AXI_INTR_1_WSTRB;
  wire CONFIG_AXI_INTR_1_WVALID;
  wire [31:0]Cyclic_Prefix_0_M00_AXIS_TDATA;
  wire Cyclic_Prefix_0_M00_AXIS_TLAST;
  wire Cyclic_Prefix_0_M00_AXIS_TREADY;
  wire [3:0]Cyclic_Prefix_0_M00_AXIS_TSTRB;
  wire Cyclic_Prefix_0_M00_AXIS_TVALID;
  wire Cyclic_Prefix_0_error;
  wire Net1;
  wire [31:0]OFDM_Controller_0_M00_AXIS_TDATA;
  wire OFDM_Controller_0_M00_AXIS_TREADY;
  wire OFDM_Controller_0_M00_AXIS_TVALID;
  wire [31:0]OFDM_Controller_0_M00_AXI_ARADDR;
  wire [2:0]OFDM_Controller_0_M00_AXI_ARPROT;
  wire OFDM_Controller_0_M00_AXI_ARREADY;
  wire OFDM_Controller_0_M00_AXI_ARVALID;
  wire [31:0]OFDM_Controller_0_M00_AXI_AWADDR;
  wire [2:0]OFDM_Controller_0_M00_AXI_AWPROT;
  wire OFDM_Controller_0_M00_AXI_AWREADY;
  wire OFDM_Controller_0_M00_AXI_AWVALID;
  wire OFDM_Controller_0_M00_AXI_BREADY;
  wire [1:0]OFDM_Controller_0_M00_AXI_BRESP;
  wire OFDM_Controller_0_M00_AXI_BVALID;
  wire [31:0]OFDM_Controller_0_M00_AXI_RDATA;
  wire OFDM_Controller_0_M00_AXI_RREADY;
  wire [1:0]OFDM_Controller_0_M00_AXI_RRESP;
  wire OFDM_Controller_0_M00_AXI_RVALID;
  wire [31:0]OFDM_Controller_0_M00_AXI_WDATA;
  wire OFDM_Controller_0_M00_AXI_WREADY;
  wire [3:0]OFDM_Controller_0_M00_AXI_WSTRB;
  wire OFDM_Controller_0_M00_AXI_WVALID;
  wire [31:0]OFDM_Controller_0_M01_AXI_ARADDR;
  wire [2:0]OFDM_Controller_0_M01_AXI_ARPROT;
  wire OFDM_Controller_0_M01_AXI_ARREADY;
  wire OFDM_Controller_0_M01_AXI_ARVALID;
  wire [31:0]OFDM_Controller_0_M01_AXI_AWADDR;
  wire [2:0]OFDM_Controller_0_M01_AXI_AWPROT;
  wire OFDM_Controller_0_M01_AXI_AWREADY;
  wire OFDM_Controller_0_M01_AXI_AWVALID;
  wire OFDM_Controller_0_M01_AXI_BREADY;
  wire [1:0]OFDM_Controller_0_M01_AXI_BRESP;
  wire OFDM_Controller_0_M01_AXI_BVALID;
  wire [31:0]OFDM_Controller_0_M01_AXI_RDATA;
  wire OFDM_Controller_0_M01_AXI_RREADY;
  wire [1:0]OFDM_Controller_0_M01_AXI_RRESP;
  wire OFDM_Controller_0_M01_AXI_RVALID;
  wire [31:0]OFDM_Controller_0_M01_AXI_WDATA;
  wire OFDM_Controller_0_M01_AXI_WREADY;
  wire [3:0]OFDM_Controller_0_M01_AXI_WSTRB;
  wire OFDM_Controller_0_M01_AXI_WVALID;
  wire [31:0]OFDM_Controller_0_M02_AXI_ARADDR;
  wire [2:0]OFDM_Controller_0_M02_AXI_ARPROT;
  wire OFDM_Controller_0_M02_AXI_ARREADY;
  wire OFDM_Controller_0_M02_AXI_ARVALID;
  wire [31:0]OFDM_Controller_0_M02_AXI_AWADDR;
  wire [2:0]OFDM_Controller_0_M02_AXI_AWPROT;
  wire OFDM_Controller_0_M02_AXI_AWREADY;
  wire OFDM_Controller_0_M02_AXI_AWVALID;
  wire OFDM_Controller_0_M02_AXI_BREADY;
  wire [1:0]OFDM_Controller_0_M02_AXI_BRESP;
  wire OFDM_Controller_0_M02_AXI_BVALID;
  wire [31:0]OFDM_Controller_0_M02_AXI_RDATA;
  wire OFDM_Controller_0_M02_AXI_RREADY;
  wire [1:0]OFDM_Controller_0_M02_AXI_RRESP;
  wire OFDM_Controller_0_M02_AXI_RVALID;
  wire [31:0]OFDM_Controller_0_M02_AXI_WDATA;
  wire OFDM_Controller_0_M02_AXI_WREADY;
  wire [3:0]OFDM_Controller_0_M02_AXI_WSTRB;
  wire OFDM_Controller_0_M02_AXI_WVALID;
  wire [31:0]Pilot_Insertion_0_M00_AXIS_TDATA;
  wire Pilot_Insertion_0_M00_AXIS_TLAST;
  wire Pilot_Insertion_0_M00_AXIS_TREADY;
  wire Pilot_Insertion_0_M00_AXIS_TVALID;
  wire [31:0]QAM_Modulator_0_M00_AXIS_TDATA;
  wire QAM_Modulator_0_M00_AXIS_TLAST;
  wire QAM_Modulator_0_M00_AXIS_TREADY;
  wire [3:0]QAM_Modulator_0_M00_AXIS_TSTRB;
  wire QAM_Modulator_0_M00_AXIS_TVALID;
  wire QAM_Modulator_0_error;
  wire [31:0]S00_AXIS_1_TDATA;
  wire S00_AXIS_1_TLAST;
  wire S00_AXIS_1_TREADY;
  wire [3:0]S00_AXIS_1_TSTRB;
  wire S00_AXIS_1_TVALID;
  wire [8:0]error_bus_dout;
  wire processing_system7_0_FCLK_CLK0;
  wire [31:0]xfft_0_M_AXIS_DATA_TDATA;
  wire xfft_0_M_AXIS_DATA_TLAST;
  wire xfft_0_M_AXIS_DATA_TREADY;
  wire xfft_0_M_AXIS_DATA_TVALID;
  wire xfft_0_event_data_in_channel_halt;
  wire xfft_0_event_data_out_channel_halt;
  wire xfft_0_event_frame_started;
  wire xfft_0_event_status_channel_halt;
  wire xfft_0_event_tlast_missing;
  wire xfft_0_event_tlast_unexpected;

  assign CONFIG_AXI_1_ARADDR = CONFIG_AXI_araddr[5:0];
  assign CONFIG_AXI_1_ARPROT = CONFIG_AXI_arprot[2:0];
  assign CONFIG_AXI_1_ARVALID = CONFIG_AXI_arvalid;
  assign CONFIG_AXI_1_AWADDR = CONFIG_AXI_awaddr[5:0];
  assign CONFIG_AXI_1_AWPROT = CONFIG_AXI_awprot[2:0];
  assign CONFIG_AXI_1_AWVALID = CONFIG_AXI_awvalid;
  assign CONFIG_AXI_1_BREADY = CONFIG_AXI_bready;
  assign CONFIG_AXI_1_RREADY = CONFIG_AXI_rready;
  assign CONFIG_AXI_1_WDATA = CONFIG_AXI_wdata[31:0];
  assign CONFIG_AXI_1_WSTRB = CONFIG_AXI_wstrb[3:0];
  assign CONFIG_AXI_1_WVALID = CONFIG_AXI_wvalid;
  assign CONFIG_AXI_INTR_1_ARADDR = CONFIG_AXI_INTR_araddr[4:0];
  assign CONFIG_AXI_INTR_1_ARPROT = CONFIG_AXI_INTR_arprot[2:0];
  assign CONFIG_AXI_INTR_1_ARVALID = CONFIG_AXI_INTR_arvalid;
  assign CONFIG_AXI_INTR_1_AWADDR = CONFIG_AXI_INTR_awaddr[4:0];
  assign CONFIG_AXI_INTR_1_AWPROT = CONFIG_AXI_INTR_awprot[2:0];
  assign CONFIG_AXI_INTR_1_AWVALID = CONFIG_AXI_INTR_awvalid;
  assign CONFIG_AXI_INTR_1_BREADY = CONFIG_AXI_INTR_bready;
  assign CONFIG_AXI_INTR_1_RREADY = CONFIG_AXI_INTR_rready;
  assign CONFIG_AXI_INTR_1_WDATA = CONFIG_AXI_INTR_wdata[31:0];
  assign CONFIG_AXI_INTR_1_WSTRB = CONFIG_AXI_INTR_wstrb[3:0];
  assign CONFIG_AXI_INTR_1_WVALID = CONFIG_AXI_INTR_wvalid;
  assign CONFIG_AXI_INTR_arready = CONFIG_AXI_INTR_1_ARREADY;
  assign CONFIG_AXI_INTR_awready = CONFIG_AXI_INTR_1_AWREADY;
  assign CONFIG_AXI_INTR_bresp[1:0] = CONFIG_AXI_INTR_1_BRESP;
  assign CONFIG_AXI_INTR_bvalid = CONFIG_AXI_INTR_1_BVALID;
  assign CONFIG_AXI_INTR_rdata[31:0] = CONFIG_AXI_INTR_1_RDATA;
  assign CONFIG_AXI_INTR_rresp[1:0] = CONFIG_AXI_INTR_1_RRESP;
  assign CONFIG_AXI_INTR_rvalid = CONFIG_AXI_INTR_1_RVALID;
  assign CONFIG_AXI_INTR_wready = CONFIG_AXI_INTR_1_WREADY;
  assign CONFIG_AXI_arready = CONFIG_AXI_1_ARREADY;
  assign CONFIG_AXI_awready = CONFIG_AXI_1_AWREADY;
  assign CONFIG_AXI_bresp[1:0] = CONFIG_AXI_1_BRESP;
  assign CONFIG_AXI_bvalid = CONFIG_AXI_1_BVALID;
  assign CONFIG_AXI_rdata[31:0] = CONFIG_AXI_1_RDATA;
  assign CONFIG_AXI_rresp[1:0] = CONFIG_AXI_1_RRESP;
  assign CONFIG_AXI_rvalid = CONFIG_AXI_1_RVALID;
  assign CONFIG_AXI_wready = CONFIG_AXI_1_WREADY;
  assign Cyclic_Prefix_0_M00_AXIS_TREADY = DATA_OUT_AXIS_tready;
  assign DATA_IN_AXIS_tready = S00_AXIS_1_TREADY;
  assign DATA_OUT_AXIS_tdata[31:0] = Cyclic_Prefix_0_M00_AXIS_TDATA;
  assign DATA_OUT_AXIS_tlast = Cyclic_Prefix_0_M00_AXIS_TLAST;
  assign DATA_OUT_AXIS_tstrb[3:0] = Cyclic_Prefix_0_M00_AXIS_TSTRB;
  assign DATA_OUT_AXIS_tvalid = Cyclic_Prefix_0_M00_AXIS_TVALID;
  assign Net1 = RST;
  assign S00_AXIS_1_TDATA = DATA_IN_AXIS_tdata[31:0];
  assign S00_AXIS_1_TLAST = DATA_IN_AXIS_tlast;
  assign S00_AXIS_1_TSTRB = DATA_IN_AXIS_tstrb[3:0];
  assign S00_AXIS_1_TVALID = DATA_IN_AXIS_tvalid;
  assign processing_system7_0_FCLK_CLK0 = CLK;
  design_1_OFDM_Controller_0_0 OFDM_Controller_0
       (.error_bus(error_bus_dout[7:0]),
        .m00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axi_araddr(OFDM_Controller_0_M00_AXI_ARADDR),
        .m00_axi_aresetn(Net1),
        .m00_axi_arprot(OFDM_Controller_0_M00_AXI_ARPROT),
        .m00_axi_arready(OFDM_Controller_0_M00_AXI_ARREADY),
        .m00_axi_arvalid(OFDM_Controller_0_M00_AXI_ARVALID),
        .m00_axi_awaddr(OFDM_Controller_0_M00_AXI_AWADDR),
        .m00_axi_awprot(OFDM_Controller_0_M00_AXI_AWPROT),
        .m00_axi_awready(OFDM_Controller_0_M00_AXI_AWREADY),
        .m00_axi_awvalid(OFDM_Controller_0_M00_AXI_AWVALID),
        .m00_axi_bready(OFDM_Controller_0_M00_AXI_BREADY),
        .m00_axi_bresp(OFDM_Controller_0_M00_AXI_BRESP),
        .m00_axi_bvalid(OFDM_Controller_0_M00_AXI_BVALID),
        .m00_axi_init_axi_txn(1'b0),
        .m00_axi_rdata(OFDM_Controller_0_M00_AXI_RDATA),
        .m00_axi_rready(OFDM_Controller_0_M00_AXI_RREADY),
        .m00_axi_rresp(OFDM_Controller_0_M00_AXI_RRESP),
        .m00_axi_rvalid(OFDM_Controller_0_M00_AXI_RVALID),
        .m00_axi_wdata(OFDM_Controller_0_M00_AXI_WDATA),
        .m00_axi_wready(OFDM_Controller_0_M00_AXI_WREADY),
        .m00_axi_wstrb(OFDM_Controller_0_M00_AXI_WSTRB),
        .m00_axi_wvalid(OFDM_Controller_0_M00_AXI_WVALID),
        .m00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axis_aresetn(Net1),
        .m00_axis_tdata(OFDM_Controller_0_M00_AXIS_TDATA),
        .m00_axis_tready(OFDM_Controller_0_M00_AXIS_TREADY),
        .m00_axis_tvalid(OFDM_Controller_0_M00_AXIS_TVALID),
        .m01_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m01_axi_araddr(OFDM_Controller_0_M01_AXI_ARADDR),
        .m01_axi_aresetn(Net1),
        .m01_axi_arprot(OFDM_Controller_0_M01_AXI_ARPROT),
        .m01_axi_arready(OFDM_Controller_0_M01_AXI_ARREADY),
        .m01_axi_arvalid(OFDM_Controller_0_M01_AXI_ARVALID),
        .m01_axi_awaddr(OFDM_Controller_0_M01_AXI_AWADDR),
        .m01_axi_awprot(OFDM_Controller_0_M01_AXI_AWPROT),
        .m01_axi_awready(OFDM_Controller_0_M01_AXI_AWREADY),
        .m01_axi_awvalid(OFDM_Controller_0_M01_AXI_AWVALID),
        .m01_axi_bready(OFDM_Controller_0_M01_AXI_BREADY),
        .m01_axi_bresp(OFDM_Controller_0_M01_AXI_BRESP),
        .m01_axi_bvalid(OFDM_Controller_0_M01_AXI_BVALID),
        .m01_axi_init_axi_txn(1'b0),
        .m01_axi_rdata(OFDM_Controller_0_M01_AXI_RDATA),
        .m01_axi_rready(OFDM_Controller_0_M01_AXI_RREADY),
        .m01_axi_rresp(OFDM_Controller_0_M01_AXI_RRESP),
        .m01_axi_rvalid(OFDM_Controller_0_M01_AXI_RVALID),
        .m01_axi_wdata(OFDM_Controller_0_M01_AXI_WDATA),
        .m01_axi_wready(OFDM_Controller_0_M01_AXI_WREADY),
        .m01_axi_wstrb(OFDM_Controller_0_M01_AXI_WSTRB),
        .m01_axi_wvalid(OFDM_Controller_0_M01_AXI_WVALID),
        .m02_axi_aclk(processing_system7_0_FCLK_CLK0),
        .m02_axi_araddr(OFDM_Controller_0_M02_AXI_ARADDR),
        .m02_axi_aresetn(Net1),
        .m02_axi_arprot(OFDM_Controller_0_M02_AXI_ARPROT),
        .m02_axi_arready(OFDM_Controller_0_M02_AXI_ARREADY),
        .m02_axi_arvalid(OFDM_Controller_0_M02_AXI_ARVALID),
        .m02_axi_awaddr(OFDM_Controller_0_M02_AXI_AWADDR),
        .m02_axi_awprot(OFDM_Controller_0_M02_AXI_AWPROT),
        .m02_axi_awready(OFDM_Controller_0_M02_AXI_AWREADY),
        .m02_axi_awvalid(OFDM_Controller_0_M02_AXI_AWVALID),
        .m02_axi_bready(OFDM_Controller_0_M02_AXI_BREADY),
        .m02_axi_bresp(OFDM_Controller_0_M02_AXI_BRESP),
        .m02_axi_bvalid(OFDM_Controller_0_M02_AXI_BVALID),
        .m02_axi_init_axi_txn(1'b0),
        .m02_axi_rdata(OFDM_Controller_0_M02_AXI_RDATA),
        .m02_axi_rready(OFDM_Controller_0_M02_AXI_RREADY),
        .m02_axi_rresp(OFDM_Controller_0_M02_AXI_RRESP),
        .m02_axi_rvalid(OFDM_Controller_0_M02_AXI_RVALID),
        .m02_axi_wdata(OFDM_Controller_0_M02_AXI_WDATA),
        .m02_axi_wready(OFDM_Controller_0_M02_AXI_WREADY),
        .m02_axi_wstrb(OFDM_Controller_0_M02_AXI_WSTRB),
        .m02_axi_wvalid(OFDM_Controller_0_M02_AXI_WVALID),
        .s00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axi_araddr(CONFIG_AXI_1_ARADDR),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot(CONFIG_AXI_1_ARPROT),
        .s00_axi_arready(CONFIG_AXI_1_ARREADY),
        .s00_axi_arvalid(CONFIG_AXI_1_ARVALID),
        .s00_axi_awaddr(CONFIG_AXI_1_AWADDR),
        .s00_axi_awprot(CONFIG_AXI_1_AWPROT),
        .s00_axi_awready(CONFIG_AXI_1_AWREADY),
        .s00_axi_awvalid(CONFIG_AXI_1_AWVALID),
        .s00_axi_bready(CONFIG_AXI_1_BREADY),
        .s00_axi_bresp(CONFIG_AXI_1_BRESP),
        .s00_axi_bvalid(CONFIG_AXI_1_BVALID),
        .s00_axi_rdata(CONFIG_AXI_1_RDATA),
        .s00_axi_rready(CONFIG_AXI_1_RREADY),
        .s00_axi_rresp(CONFIG_AXI_1_RRESP),
        .s00_axi_rvalid(CONFIG_AXI_1_RVALID),
        .s00_axi_wdata(CONFIG_AXI_1_WDATA),
        .s00_axi_wready(CONFIG_AXI_1_WREADY),
        .s00_axi_wstrb(CONFIG_AXI_1_WSTRB),
        .s00_axi_wvalid(CONFIG_AXI_1_WVALID),
        .s_axi_intr_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_intr_araddr(CONFIG_AXI_INTR_1_ARADDR),
        .s_axi_intr_aresetn(Net1),
        .s_axi_intr_arprot(CONFIG_AXI_INTR_1_ARPROT),
        .s_axi_intr_arready(CONFIG_AXI_INTR_1_ARREADY),
        .s_axi_intr_arvalid(CONFIG_AXI_INTR_1_ARVALID),
        .s_axi_intr_awaddr(CONFIG_AXI_INTR_1_AWADDR),
        .s_axi_intr_awprot(CONFIG_AXI_INTR_1_AWPROT),
        .s_axi_intr_awready(CONFIG_AXI_INTR_1_AWREADY),
        .s_axi_intr_awvalid(CONFIG_AXI_INTR_1_AWVALID),
        .s_axi_intr_bready(CONFIG_AXI_INTR_1_BREADY),
        .s_axi_intr_bresp(CONFIG_AXI_INTR_1_BRESP),
        .s_axi_intr_bvalid(CONFIG_AXI_INTR_1_BVALID),
        .s_axi_intr_rdata(CONFIG_AXI_INTR_1_RDATA),
        .s_axi_intr_rready(CONFIG_AXI_INTR_1_RREADY),
        .s_axi_intr_rresp(CONFIG_AXI_INTR_1_RRESP),
        .s_axi_intr_rvalid(CONFIG_AXI_INTR_1_RVALID),
        .s_axi_intr_wdata(CONFIG_AXI_INTR_1_WDATA),
        .s_axi_intr_wready(CONFIG_AXI_INTR_1_WREADY),
        .s_axi_intr_wstrb(CONFIG_AXI_INTR_1_WSTRB),
        .s_axi_intr_wvalid(CONFIG_AXI_INTR_1_WVALID));
  design_1_Cyclic_Prefix_0_0 cyclic_prefix
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(Net1),
        .error(Cyclic_Prefix_0_error),
        .m00_axis_tdata(Cyclic_Prefix_0_M00_AXIS_TDATA),
        .m00_axis_tlast(Cyclic_Prefix_0_M00_AXIS_TLAST),
        .m00_axis_tready(Cyclic_Prefix_0_M00_AXIS_TREADY),
        .m00_axis_tstrb(Cyclic_Prefix_0_M00_AXIS_TSTRB),
        .m00_axis_tvalid(Cyclic_Prefix_0_M00_AXIS_TVALID),
        .s00_axi_araddr(OFDM_Controller_0_M02_AXI_ARADDR[3:0]),
        .s00_axi_arprot(OFDM_Controller_0_M02_AXI_ARPROT),
        .s00_axi_arready(OFDM_Controller_0_M02_AXI_ARREADY),
        .s00_axi_arvalid(OFDM_Controller_0_M02_AXI_ARVALID),
        .s00_axi_awaddr(OFDM_Controller_0_M02_AXI_AWADDR[3:0]),
        .s00_axi_awprot(OFDM_Controller_0_M02_AXI_AWPROT),
        .s00_axi_awready(OFDM_Controller_0_M02_AXI_AWREADY),
        .s00_axi_awvalid(OFDM_Controller_0_M02_AXI_AWVALID),
        .s00_axi_bready(OFDM_Controller_0_M02_AXI_BREADY),
        .s00_axi_bresp(OFDM_Controller_0_M02_AXI_BRESP),
        .s00_axi_bvalid(OFDM_Controller_0_M02_AXI_BVALID),
        .s00_axi_rdata(OFDM_Controller_0_M02_AXI_RDATA),
        .s00_axi_rready(OFDM_Controller_0_M02_AXI_RREADY),
        .s00_axi_rresp(OFDM_Controller_0_M02_AXI_RRESP),
        .s00_axi_rvalid(OFDM_Controller_0_M02_AXI_RVALID),
        .s00_axi_wdata(OFDM_Controller_0_M02_AXI_WDATA),
        .s00_axi_wready(OFDM_Controller_0_M02_AXI_WREADY),
        .s00_axi_wstrb(OFDM_Controller_0_M02_AXI_WSTRB),
        .s00_axi_wvalid(OFDM_Controller_0_M02_AXI_WVALID),
        .s00_axis_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .s00_axis_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .s00_axis_tready(xfft_0_M_AXIS_DATA_TREADY),
        .s00_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axis_tvalid(xfft_0_M_AXIS_DATA_TVALID));
  design_1_xlconcat_0_0 error_bus
       (.In0(QAM_Modulator_0_error),
        .In1(1'b0),
        .In2(xfft_0_event_frame_started),
        .In3(xfft_0_event_tlast_unexpected),
        .In4(xfft_0_event_tlast_missing),
        .In5(xfft_0_event_status_channel_halt),
        .In6(xfft_0_event_data_in_channel_halt),
        .In7(xfft_0_event_data_out_channel_halt),
        .In8(Cyclic_Prefix_0_error),
        .dout(error_bus_dout));
  design_1_xfft_0_0 ifft
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(Net1),
        .event_data_in_channel_halt(xfft_0_event_data_in_channel_halt),
        .event_data_out_channel_halt(xfft_0_event_data_out_channel_halt),
        .event_frame_started(xfft_0_event_frame_started),
        .event_status_channel_halt(xfft_0_event_status_channel_halt),
        .event_tlast_missing(xfft_0_event_tlast_missing),
        .event_tlast_unexpected(xfft_0_event_tlast_unexpected),
        .m_axis_data_tdata(xfft_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tlast(xfft_0_M_AXIS_DATA_TLAST),
        .m_axis_data_tready(xfft_0_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_0_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(OFDM_Controller_0_M00_AXIS_TDATA[23:0]),
        .s_axis_config_tready(OFDM_Controller_0_M00_AXIS_TREADY),
        .s_axis_config_tvalid(OFDM_Controller_0_M00_AXIS_TVALID),
        .s_axis_data_tdata(Pilot_Insertion_0_M00_AXIS_TDATA),
        .s_axis_data_tlast(Pilot_Insertion_0_M00_AXIS_TLAST),
        .s_axis_data_tready(Pilot_Insertion_0_M00_AXIS_TREADY),
        .s_axis_data_tvalid(Pilot_Insertion_0_M00_AXIS_TVALID));
  design_1_Pilot_Insertion_0_0 pilot_insertion
       (.m00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axis_aresetn(Net1),
        .m00_axis_tdata(Pilot_Insertion_0_M00_AXIS_TDATA),
        .m00_axis_tlast(Pilot_Insertion_0_M00_AXIS_TLAST),
        .m00_axis_tready(Pilot_Insertion_0_M00_AXIS_TREADY),
        .m00_axis_tvalid(Pilot_Insertion_0_M00_AXIS_TVALID),
        .s00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axi_araddr(OFDM_Controller_0_M01_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot(OFDM_Controller_0_M01_AXI_ARPROT),
        .s00_axi_arready(OFDM_Controller_0_M01_AXI_ARREADY),
        .s00_axi_arvalid(OFDM_Controller_0_M01_AXI_ARVALID),
        .s00_axi_awaddr(OFDM_Controller_0_M01_AXI_AWADDR[3:0]),
        .s00_axi_awprot(OFDM_Controller_0_M01_AXI_AWPROT),
        .s00_axi_awready(OFDM_Controller_0_M01_AXI_AWREADY),
        .s00_axi_awvalid(OFDM_Controller_0_M01_AXI_AWVALID),
        .s00_axi_bready(OFDM_Controller_0_M01_AXI_BREADY),
        .s00_axi_bresp(OFDM_Controller_0_M01_AXI_BRESP),
        .s00_axi_bvalid(OFDM_Controller_0_M01_AXI_BVALID),
        .s00_axi_rdata(OFDM_Controller_0_M01_AXI_RDATA),
        .s00_axi_rready(OFDM_Controller_0_M01_AXI_RREADY),
        .s00_axi_rresp(OFDM_Controller_0_M01_AXI_RRESP),
        .s00_axi_rvalid(OFDM_Controller_0_M01_AXI_RVALID),
        .s00_axi_wdata(OFDM_Controller_0_M01_AXI_WDATA),
        .s00_axi_wready(OFDM_Controller_0_M01_AXI_WREADY),
        .s00_axi_wstrb(OFDM_Controller_0_M01_AXI_WSTRB),
        .s00_axi_wvalid(OFDM_Controller_0_M01_AXI_WVALID),
        .s00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axis_aresetn(Net1),
        .s00_axis_tdata(QAM_Modulator_0_M00_AXIS_TDATA),
        .s00_axis_tlast(QAM_Modulator_0_M00_AXIS_TLAST),
        .s00_axis_tready(QAM_Modulator_0_M00_AXIS_TREADY),
        .s00_axis_tstrb(QAM_Modulator_0_M00_AXIS_TSTRB),
        .s00_axis_tvalid(QAM_Modulator_0_M00_AXIS_TVALID));
  design_1_QAM_Modulator_0_0 qam_modulator
       (.error(QAM_Modulator_0_error),
        .m00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .m00_axis_aresetn(Net1),
        .m00_axis_tdata(QAM_Modulator_0_M00_AXIS_TDATA),
        .m00_axis_tlast(QAM_Modulator_0_M00_AXIS_TLAST),
        .m00_axis_tready(QAM_Modulator_0_M00_AXIS_TREADY),
        .m00_axis_tstrb(QAM_Modulator_0_M00_AXIS_TSTRB),
        .m00_axis_tvalid(QAM_Modulator_0_M00_AXIS_TVALID),
        .s00_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axi_araddr(OFDM_Controller_0_M00_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot(OFDM_Controller_0_M00_AXI_ARPROT),
        .s00_axi_arready(OFDM_Controller_0_M00_AXI_ARREADY),
        .s00_axi_arvalid(OFDM_Controller_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(OFDM_Controller_0_M00_AXI_AWADDR[3:0]),
        .s00_axi_awprot(OFDM_Controller_0_M00_AXI_AWPROT),
        .s00_axi_awready(OFDM_Controller_0_M00_AXI_AWREADY),
        .s00_axi_awvalid(OFDM_Controller_0_M00_AXI_AWVALID),
        .s00_axi_bready(OFDM_Controller_0_M00_AXI_BREADY),
        .s00_axi_bresp(OFDM_Controller_0_M00_AXI_BRESP),
        .s00_axi_bvalid(OFDM_Controller_0_M00_AXI_BVALID),
        .s00_axi_rdata(OFDM_Controller_0_M00_AXI_RDATA),
        .s00_axi_rready(OFDM_Controller_0_M00_AXI_RREADY),
        .s00_axi_rresp(OFDM_Controller_0_M00_AXI_RRESP),
        .s00_axi_rvalid(OFDM_Controller_0_M00_AXI_RVALID),
        .s00_axi_wdata(OFDM_Controller_0_M00_AXI_WDATA),
        .s00_axi_wready(OFDM_Controller_0_M00_AXI_WREADY),
        .s00_axi_wstrb(OFDM_Controller_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(OFDM_Controller_0_M00_AXI_WVALID),
        .s00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axis_aresetn(Net1),
        .s00_axis_tdata(S00_AXIS_1_TDATA),
        .s00_axis_tlast(S00_AXIS_1_TLAST),
        .s00_axis_tready(S00_AXIS_1_TREADY),
        .s00_axis_tstrb(S00_AXIS_1_TSTRB),
        .s00_axis_tvalid(S00_AXIS_1_TVALID));
endmodule
