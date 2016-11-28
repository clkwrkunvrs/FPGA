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
ExecStep $xv_path/bin/xsim One_shot_tb_behav -key {Behavioral:DOS:Functional:One_shot_tb} -tclbatch One_shot_tb.tcl -log simulate.log
