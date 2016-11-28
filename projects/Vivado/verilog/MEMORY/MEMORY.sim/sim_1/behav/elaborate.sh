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
ExecStep $xv_path/bin/xelab -wto 425d9285b50f4593bde547113698575c -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot RAM_behav xil_defaultlib.RAM -log elaborate.log
