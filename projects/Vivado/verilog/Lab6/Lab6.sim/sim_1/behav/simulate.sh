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
ExecStep $xv_path/bin/xsim ram_tb_behav -key {Behavioral:sim_1:Functional:ram_tb} -tclbatch ram_tb.tcl -log simulate.log
