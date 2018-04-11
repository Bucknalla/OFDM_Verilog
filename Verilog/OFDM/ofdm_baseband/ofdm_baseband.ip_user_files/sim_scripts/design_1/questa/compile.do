vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12
vlib msim/util_vector_logic_v2_0

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work util_vector_logic_v2_0 -64 -93 \
"../../../bd/design_1/ipshared/1d19/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ipshared/e147/xlconstant.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ipshared/7621/hdl/preamble.v" \
"../../../bd/design_1/ipshared/7621/hdl/Preamble_v0_1_S00_AXI.v" \
"../../../bd/design_1/ipshared/7621/hdl/Preamble_v0_1_S00_AXIS.v" \
"../../../bd/design_1/ipshared/7621/hdl/Preamble_v0_1_M00_AXIS.v" \
"../../../bd/design_1/ipshared/7621/hdl/Preamble_v0_1.v" \
"../../../bd/design_1/ip/design_1_Preamble_0_0/sim/design_1_Preamble_0_0.v" \
"../../../bd/design_1/ipshared/edit_QAM_Modulator_v0_1.srcs/sources_1/new/qam_4.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_2.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_Top.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_Modulator_v0_1_S00_AXI.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_Modulator_v0_1_S00_AXIS.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_Modulator_v0_1_M00_AXIS.v" \
"../../../bd/design_1/ipshared/df7d/hdl/QAM_Modulator_v0_1.v" \
"../../../bd/design_1/ip/design_1_QAM_Modulator_0_0/sim/design_1_QAM_Modulator_0_0.v" \
"../../../bd/design_1/ipshared/3fec/hdl/Pilot_Top.v" \
"../../../bd/design_1/ipshared/3fec/hdl/Pilot_Insertion_v0_1_S00_AXI.v" \
"../../../bd/design_1/ipshared/3fec/hdl/Pilot_Insertion_v0_1_S00_AXIS.v" \
"../../../bd/design_1/ipshared/3fec/hdl/Pilot_Insertion_v0_1_M00_AXIS.v" \
"../../../bd/design_1/ipshared/3fec/hdl/Pilot_Insertion_v0_1.v" \
"../../../bd/design_1/ip/design_1_Pilot_Insertion_0_0/sim/design_1_Pilot_Insertion_0_0.v" \

vlog -work xil_defaultlib "glbl.v"

