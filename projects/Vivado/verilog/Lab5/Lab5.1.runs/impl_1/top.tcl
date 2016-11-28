proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {1}  -id {Project 1-311}  -string {{CRITICAL WARNING: [Project 1-311] Could not find the file '/home/trk/git_fpga/new_git/Downloads/Debounce.vhd', nor could it be found using path '/home/trk/Downloads/Debounce.vhd'.}}  -suppress 
set_msg_config  -ruleid {2}  -id {Vivado 12-106}  -string {{ERROR: [Vivado 12-106] *** Exception: java.lang.NullPointerException: Failed to retrieve atom name. (See /home/fpga/vivado_pid31376.debug)}}  -suppress 
set_msg_config  -ruleid {3}  -id {filemgmt 20-728}  -string {{CRITICAL WARNING: [filemgmt 20-728] File analysis is incomplete due to previous errors / warnings. Previous successful analysis data will be used for elaboration. [/home/trk/git_fpga/new_git/projects/Vivado/verilog/Lab5/Lab5.1.srcs/sim_1/new/Counter_tb.v:1]}}  -suppress 

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  open_checkpoint top_routed.dcp
  set_property webtalk.parent_dir /home/trk/git_fpga/new_git/projects/Vivado/verilog/Lab5/Lab5.1.cache/wt [current_project]
  catch { write_mem_info -force top.mmi }
  write_bitstream -force -no_partial_bitfile top.bit 
  catch { write_sysdef -hwdef top.hwdef -bitfile top.bit -meminfo top.mmi -file top.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

