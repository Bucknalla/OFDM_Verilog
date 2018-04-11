#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 88fa852aa3bc42ddac2ab429a1caf2aa -m64 --debug typical --relax --mt 8 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L fifo_generator_v13_1_3 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L xil_defaultlib -L util_vector_logic_v2_0 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot baseband_tb_behav xil_defaultlib.baseband_tb xil_defaultlib.glbl -log elaborate.log
