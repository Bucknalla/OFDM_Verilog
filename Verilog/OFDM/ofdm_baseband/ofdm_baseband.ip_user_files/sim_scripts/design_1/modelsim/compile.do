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
vlib msim/xbip_utils_v3_0_7
vlib msim/axi_utils_v2_0_3
vlib msim/c_reg_fd_v12_0_3
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_addsub_v3_0_3
vlib msim/c_addsub_v12_0_10
vlib msim/c_mux_bit_v12_0_3
vlib msim/c_shift_ram_v12_0_10
vlib msim/xbip_bram18k_v3_0_3
vlib msim/mult_gen_v12_0_12
vlib msim/cmpy_v6_0_12
vlib msim/floating_point_v7_0_13
vlib msim/xfft_v9_0_11

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12
vmap util_vector_logic_v2_0 msim/util_vector_logic_v2_0
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap axi_utils_v2_0_3 msim/axi_utils_v2_0_3
vmap c_reg_fd_v12_0_3 msim/c_reg_fd_v12_0_3
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_addsub_v3_0_3 msim/xbip_addsub_v3_0_3
vmap c_addsub_v12_0_10 msim/c_addsub_v12_0_10
vmap c_mux_bit_v12_0_3 msim/c_mux_bit_v12_0_3
vmap c_shift_ram_v12_0_10 msim/c_shift_ram_v12_0_10
vmap xbip_bram18k_v3_0_3 msim/xbip_bram18k_v3_0_3
vmap mult_gen_v12_0_12 msim/mult_gen_v12_0_12
vmap cmpy_v6_0_12 msim/cmpy_v6_0_12
vmap floating_point_v7_0_13 msim/floating_point_v7_0_13
vmap xfft_v9_0_11 msim/xfft_v9_0_11

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work util_vector_logic_v2_0 -64 -93 \
"../../../bd/design_1/ipshared/1d19/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
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
"../../../bd/design_1/ipshared/689b/hdl/Pilot_Top.v" \
"../../../bd/design_1/ipshared/689b/hdl/Pilot_Insertion_v0_1_S00_AXI.v" \
"../../../bd/design_1/ipshared/689b/hdl/Pilot_Insertion_v0_1_S00_AXIS.v" \
"../../../bd/design_1/ipshared/689b/hdl/Pilot_Insertion_v0_1_M00_AXIS.v" \
"../../../bd/design_1/ipshared/689b/hdl/Pilot_Insertion_v0_1.v" \
"../../../bd/design_1/ip/design_1_Pilot_Insertion_0_0/sim/design_1_Pilot_Insertion_0_0.v" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/43f5/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_10 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/f2d7/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_10 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/5ac0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_3 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/403d/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_12 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/f0ab/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work cmpy_v6_0_12 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/8905/hdl/cmpy_v6_0_vh_rfs.vhd" \

vcom -work floating_point_v7_0_13 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/22e6/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_0_11 -64 -93 \
"../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/3950/hdl/xfft_v9_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../ofdm_baseband.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ipshared/8cd5/hdl/controller.v" \
"../../../bd/design_1/ipshared/8cd5/hdl/FFT_Controller_v0_1_S00_AXI.v" \
"../../../bd/design_1/ipshared/8cd5/hdl/FFT_Controller_v0_1_M00_AXIS.v" \
"../../../bd/design_1/ipshared/8cd5/hdl/FFT_Controller_v0_1.v" \
"../../../bd/design_1/ip/design_1_FFT_Controller_0_1/sim/design_1_FFT_Controller_0_1.v" \

vlog -work xil_defaultlib "glbl.v"

