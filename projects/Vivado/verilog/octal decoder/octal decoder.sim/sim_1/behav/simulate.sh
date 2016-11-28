#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim octal_decoder_top_behav -key {Behavioral:sim_1:Functional:octal_decoder_top} -tclbatch octal_decoder_top.tcl -log simulate.log
