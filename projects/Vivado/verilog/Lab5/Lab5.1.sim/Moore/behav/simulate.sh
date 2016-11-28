#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.3"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Moore_tb_behav -key {Behavioral:Moore:Functional:Moore_tb} -tclbatch Moore_tb.tcl -log simulate.log
