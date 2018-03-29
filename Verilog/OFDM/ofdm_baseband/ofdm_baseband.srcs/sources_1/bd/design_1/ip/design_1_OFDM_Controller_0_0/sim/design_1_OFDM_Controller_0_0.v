// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:OFDM_Controller:0.1
// IP Revision: 7

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_OFDM_Controller_0_0 (
  error_bus,
  s_axi_intr_awaddr,
  s_axi_intr_awprot,
  s_axi_intr_awvalid,
  s_axi_intr_awready,
  s_axi_intr_wdata,
  s_axi_intr_wstrb,
  s_axi_intr_wvalid,
  s_axi_intr_wready,
  s_axi_intr_bresp,
  s_axi_intr_bvalid,
  s_axi_intr_bready,
  s_axi_intr_araddr,
  s_axi_intr_arprot,
  s_axi_intr_arvalid,
  s_axi_intr_arready,
  s_axi_intr_rdata,
  s_axi_intr_rresp,
  s_axi_intr_rvalid,
  s_axi_intr_rready,
  s_axi_intr_aclk,
  s_axi_intr_aresetn,
  irq,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready,
  s00_axi_aclk,
  s00_axi_aresetn,
  m00_axis_tdata,
  m00_axis_tstrb,
  m00_axis_tlast,
  m00_axis_tvalid,
  m00_axis_tready,
  m00_axis_aclk,
  m00_axis_aresetn,
  m02_axi_awaddr,
  m02_axi_awprot,
  m02_axi_awvalid,
  m02_axi_awready,
  m02_axi_wdata,
  m02_axi_wstrb,
  m02_axi_wvalid,
  m02_axi_wready,
  m02_axi_bresp,
  m02_axi_bvalid,
  m02_axi_bready,
  m02_axi_araddr,
  m02_axi_arprot,
  m02_axi_arvalid,
  m02_axi_arready,
  m02_axi_rdata,
  m02_axi_rresp,
  m02_axi_rvalid,
  m02_axi_rready,
  m02_axi_aclk,
  m02_axi_aresetn,
  m02_axi_init_axi_txn,
  m02_axi_error,
  m02_axi_txn_done,
  m00_axi_awaddr,
  m00_axi_awprot,
  m00_axi_awvalid,
  m00_axi_awready,
  m00_axi_wdata,
  m00_axi_wstrb,
  m00_axi_wvalid,
  m00_axi_wready,
  m00_axi_bresp,
  m00_axi_bvalid,
  m00_axi_bready,
  m00_axi_araddr,
  m00_axi_arprot,
  m00_axi_arvalid,
  m00_axi_arready,
  m00_axi_rdata,
  m00_axi_rresp,
  m00_axi_rvalid,
  m00_axi_rready,
  m00_axi_aclk,
  m00_axi_aresetn,
  m00_axi_init_axi_txn,
  m00_axi_error,
  m00_axi_txn_done,
  m01_axi_awaddr,
  m01_axi_awprot,
  m01_axi_awvalid,
  m01_axi_awready,
  m01_axi_wdata,
  m01_axi_wstrb,
  m01_axi_wvalid,
  m01_axi_wready,
  m01_axi_bresp,
  m01_axi_bvalid,
  m01_axi_bready,
  m01_axi_araddr,
  m01_axi_arprot,
  m01_axi_arvalid,
  m01_axi_arready,
  m01_axi_rdata,
  m01_axi_rresp,
  m01_axi_rvalid,
  m01_axi_rready,
  m01_axi_aclk,
  m01_axi_aresetn,
  m01_axi_init_axi_txn,
  m01_axi_error,
  m01_axi_txn_done
);

input wire [7 : 0] error_bus;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR" *)
input wire [4 : 0] s_axi_intr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT" *)
input wire [2 : 0] s_axi_intr_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID" *)
input wire s_axi_intr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY" *)
output wire s_axi_intr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA" *)
input wire [31 : 0] s_axi_intr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB" *)
input wire [3 : 0] s_axi_intr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID" *)
input wire s_axi_intr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY" *)
output wire s_axi_intr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP" *)
output wire [1 : 0] s_axi_intr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID" *)
output wire s_axi_intr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY" *)
input wire s_axi_intr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR" *)
input wire [4 : 0] s_axi_intr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT" *)
input wire [2 : 0] s_axi_intr_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID" *)
input wire s_axi_intr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY" *)
output wire s_axi_intr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA" *)
output wire [31 : 0] s_axi_intr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP" *)
output wire [1 : 0] s_axi_intr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID" *)
output wire s_axi_intr_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY" *)
input wire s_axi_intr_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK, xilinx.com:signal:clock:1.0 s_axi_intr_aclk CLK" *)
input wire s_axi_intr_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST, xilinx.com:signal:reset:1.0 s_axi_intr_aresetn RST" *)
input wire s_axi_intr_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *)
output wire irq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [5 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [5 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *)
output wire [31 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *)
output wire [3 : 0] m00_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *)
output wire m00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 m00_axis_aclk CLK" *)
input wire m00_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST, xilinx.com:signal:reset:1.0 m00_axis_aresetn RST" *)
input wire m00_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *)
output wire [31 : 0] m02_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *)
output wire [2 : 0] m02_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *)
output wire m02_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *)
input wire m02_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *)
output wire [31 : 0] m02_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *)
output wire [3 : 0] m02_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *)
output wire m02_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *)
input wire m02_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *)
input wire [1 : 0] m02_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *)
input wire m02_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *)
output wire m02_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *)
output wire [31 : 0] m02_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *)
output wire [2 : 0] m02_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *)
output wire m02_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *)
input wire m02_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *)
input wire [31 : 0] m02_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *)
input wire [1 : 0] m02_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *)
input wire m02_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *)
output wire m02_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M02_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m02_axi_aclk CLK" *)
input wire m02_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M02_AXI_RST RST, xilinx.com:signal:reset:1.0 m02_axi_aresetn RST" *)
input wire m02_axi_aresetn;
input wire m02_axi_init_axi_txn;
output wire m02_axi_error;
output wire m02_axi_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [31 : 0] m00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] m00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire m00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire m00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [31 : 0] m00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [3 : 0] m00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire m00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire m00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] m00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire m00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire m00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [31 : 0] m00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] m00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire m00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire m00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [31 : 0] m00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] m00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire m00_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire m00_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *)
input wire m00_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *)
input wire m00_axi_aresetn;
input wire m00_axi_init_axi_txn;
output wire m00_axi_error;
output wire m00_axi_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output wire [31 : 0] m01_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] m01_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire m01_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire m01_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [31 : 0] m01_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [3 : 0] m01_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire m01_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire m01_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] m01_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire m01_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire m01_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [31 : 0] m01_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] m01_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire m01_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire m01_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [31 : 0] m01_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] m01_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire m01_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire m01_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M01_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m01_axi_aclk CLK" *)
input wire m01_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M01_AXI_RST RST, xilinx.com:signal:reset:1.0 m01_axi_aresetn RST" *)
input wire m01_axi_aresetn;
input wire m01_axi_init_axi_txn;
output wire m01_axi_error;
output wire m01_axi_txn_done;

  OFDM_Controller_v0_1 #(
    .C_S_AXI_INTR_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_INTR_ADDR_WIDTH(5),  // Width of S_AXI address bus
    .C_NUM_OF_INTR(1),  // Number of Interrupts
    .C_INTR_SENSITIVITY(32'HFFFFFFFF),  // Each bit corresponds to Sensitivity of interrupt :  0 - EDGE, 1 - LEVEL
    .C_INTR_ACTIVE_STATE(32'HFFFFFFFF),  // Each bit corresponds to Sub-type of INTR: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_INTR_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_INTR_SENSITIVITY is LEVEL(1) ]
    .C_IRQ_SENSITIVITY(1),  // Sensitivity of IRQ: 0 - EDGE, 1 - LEVEL
    .C_IRQ_ACTIVE_STATE(1),  // Sub-type of IRQ: [0 - FALLING_EDGE, 1 - RISING_EDGE : if C_IRQ_SENSITIVITY is EDGE(0)] and [ 0 - LEVEL_LOW, 1 - LEVEL_LOW : if C_IRQ_SENSITIVITY is LEVEL(1) ]
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(6),  // Width of S_AXI address bus
    .C_M00_AXIS_TDATA_WIDTH(32),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_M00_AXIS_START_COUNT(32),  // Start count is the numeber of clock cycles the master will wait before initiating/issuing any transaction.
    .C_M02_AXI_START_DATA_VALUE(32'HAA000000),  // The master will start generating data from the C_M_START_DATA_VALUE value
    .C_M02_AXI_TARGET_SLAVE_BASE_ADDR(32'H40000000),  // The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
    .C_M02_AXI_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_M02_AXI_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_M02_AXI_TRANSACTIONS_NUM(4),  // Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
    .C_M00_AXI_START_DATA_VALUE(32'HAA000000),  // The master will start generating data from the C_M_START_DATA_VALUE value
    .C_M00_AXI_TARGET_SLAVE_BASE_ADDR(32'H40000000),  // The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
    .C_M00_AXI_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_M00_AXI_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_M00_AXI_TRANSACTIONS_NUM(4),  // Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
    .C_M01_AXI_START_DATA_VALUE(32'HAA000000),  // The master will start generating data from the C_M_START_DATA_VALUE value
    .C_M01_AXI_TARGET_SLAVE_BASE_ADDR(32'H40000000),  // The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
    .C_M01_AXI_ADDR_WIDTH(32),  // Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
    .C_M01_AXI_DATA_WIDTH(32),  // Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
    .C_M01_AXI_TRANSACTIONS_NUM(4)  // Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
  ) inst (
    .error_bus(error_bus),
    .s_axi_intr_awaddr(s_axi_intr_awaddr),
    .s_axi_intr_awprot(s_axi_intr_awprot),
    .s_axi_intr_awvalid(s_axi_intr_awvalid),
    .s_axi_intr_awready(s_axi_intr_awready),
    .s_axi_intr_wdata(s_axi_intr_wdata),
    .s_axi_intr_wstrb(s_axi_intr_wstrb),
    .s_axi_intr_wvalid(s_axi_intr_wvalid),
    .s_axi_intr_wready(s_axi_intr_wready),
    .s_axi_intr_bresp(s_axi_intr_bresp),
    .s_axi_intr_bvalid(s_axi_intr_bvalid),
    .s_axi_intr_bready(s_axi_intr_bready),
    .s_axi_intr_araddr(s_axi_intr_araddr),
    .s_axi_intr_arprot(s_axi_intr_arprot),
    .s_axi_intr_arvalid(s_axi_intr_arvalid),
    .s_axi_intr_arready(s_axi_intr_arready),
    .s_axi_intr_rdata(s_axi_intr_rdata),
    .s_axi_intr_rresp(s_axi_intr_rresp),
    .s_axi_intr_rvalid(s_axi_intr_rvalid),
    .s_axi_intr_rready(s_axi_intr_rready),
    .s_axi_intr_aclk(s_axi_intr_aclk),
    .s_axi_intr_aresetn(s_axi_intr_aresetn),
    .irq(irq),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tstrb(m00_axis_tstrb),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tready(m00_axis_tready),
    .m00_axis_aclk(m00_axis_aclk),
    .m00_axis_aresetn(m00_axis_aresetn),
    .m02_axi_awaddr(m02_axi_awaddr),
    .m02_axi_awprot(m02_axi_awprot),
    .m02_axi_awvalid(m02_axi_awvalid),
    .m02_axi_awready(m02_axi_awready),
    .m02_axi_wdata(m02_axi_wdata),
    .m02_axi_wstrb(m02_axi_wstrb),
    .m02_axi_wvalid(m02_axi_wvalid),
    .m02_axi_wready(m02_axi_wready),
    .m02_axi_bresp(m02_axi_bresp),
    .m02_axi_bvalid(m02_axi_bvalid),
    .m02_axi_bready(m02_axi_bready),
    .m02_axi_araddr(m02_axi_araddr),
    .m02_axi_arprot(m02_axi_arprot),
    .m02_axi_arvalid(m02_axi_arvalid),
    .m02_axi_arready(m02_axi_arready),
    .m02_axi_rdata(m02_axi_rdata),
    .m02_axi_rresp(m02_axi_rresp),
    .m02_axi_rvalid(m02_axi_rvalid),
    .m02_axi_rready(m02_axi_rready),
    .m02_axi_aclk(m02_axi_aclk),
    .m02_axi_aresetn(m02_axi_aresetn),
    .m02_axi_init_axi_txn(m02_axi_init_axi_txn),
    .m02_axi_error(m02_axi_error),
    .m02_axi_txn_done(m02_axi_txn_done),
    .m00_axi_awaddr(m00_axi_awaddr),
    .m00_axi_awprot(m00_axi_awprot),
    .m00_axi_awvalid(m00_axi_awvalid),
    .m00_axi_awready(m00_axi_awready),
    .m00_axi_wdata(m00_axi_wdata),
    .m00_axi_wstrb(m00_axi_wstrb),
    .m00_axi_wvalid(m00_axi_wvalid),
    .m00_axi_wready(m00_axi_wready),
    .m00_axi_bresp(m00_axi_bresp),
    .m00_axi_bvalid(m00_axi_bvalid),
    .m00_axi_bready(m00_axi_bready),
    .m00_axi_araddr(m00_axi_araddr),
    .m00_axi_arprot(m00_axi_arprot),
    .m00_axi_arvalid(m00_axi_arvalid),
    .m00_axi_arready(m00_axi_arready),
    .m00_axi_rdata(m00_axi_rdata),
    .m00_axi_rresp(m00_axi_rresp),
    .m00_axi_rvalid(m00_axi_rvalid),
    .m00_axi_rready(m00_axi_rready),
    .m00_axi_aclk(m00_axi_aclk),
    .m00_axi_aresetn(m00_axi_aresetn),
    .m00_axi_init_axi_txn(m00_axi_init_axi_txn),
    .m00_axi_error(m00_axi_error),
    .m00_axi_txn_done(m00_axi_txn_done),
    .m01_axi_awaddr(m01_axi_awaddr),
    .m01_axi_awprot(m01_axi_awprot),
    .m01_axi_awvalid(m01_axi_awvalid),
    .m01_axi_awready(m01_axi_awready),
    .m01_axi_wdata(m01_axi_wdata),
    .m01_axi_wstrb(m01_axi_wstrb),
    .m01_axi_wvalid(m01_axi_wvalid),
    .m01_axi_wready(m01_axi_wready),
    .m01_axi_bresp(m01_axi_bresp),
    .m01_axi_bvalid(m01_axi_bvalid),
    .m01_axi_bready(m01_axi_bready),
    .m01_axi_araddr(m01_axi_araddr),
    .m01_axi_arprot(m01_axi_arprot),
    .m01_axi_arvalid(m01_axi_arvalid),
    .m01_axi_arready(m01_axi_arready),
    .m01_axi_rdata(m01_axi_rdata),
    .m01_axi_rresp(m01_axi_rresp),
    .m01_axi_rvalid(m01_axi_rvalid),
    .m01_axi_rready(m01_axi_rready),
    .m01_axi_aclk(m01_axi_aclk),
    .m01_axi_aresetn(m01_axi_aresetn),
    .m01_axi_init_axi_txn(m01_axi_init_axi_txn),
    .m01_axi_error(m01_axi_error),
    .m01_axi_txn_done(m01_axi_txn_done)
  );
endmodule
