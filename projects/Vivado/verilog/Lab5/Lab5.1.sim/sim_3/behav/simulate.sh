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
ExecStep $xv_path/bin/xsim Counter_tb_behav -key {Behavioral:sim_3:Functional:Counter_tb} -tclbatch Counter_tb.tcl -log simulate.log
