//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Thu Mar 29 11:14:54 2018
//Host        : Alex-Ubuntu running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
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
       (.error_bus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .s00_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_aresetn(Net1),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arvalid(1'b0),
        .s00_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awvalid(1'b0),
        .s00_axi_bready(1'b0),
        .s00_axi_rready(1'b0),
        .s00_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_wvalid(1'b0),
        .s_axi_intr_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_intr_araddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_intr_aresetn(Net1),
        .s_axi_intr_arprot({1'b0,1'b0,1'b0}),
        .s_axi_intr_arvalid(1'b0),
        .s_axi_intr_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_intr_awprot({1'b0,1'b0,1'b0}),
        .s_axi_intr_awvalid(1'b0),
        .s_axi_intr_bready(1'b0),
        .s_axi_intr_rready(1'b0),
        .s_axi_intr_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_intr_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_intr_wvalid(1'b0));
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
        .In8(Cyclic_Prefix_0_error));
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
