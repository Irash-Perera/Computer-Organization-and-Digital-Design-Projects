# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.cache/wt [current_project]
set_property parent.project_path D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.2 [current_project]
set_property ip_output_repo d:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Downloads/Program_Counter/Program_Counter.srcs/sources_1/imports/new/D_FF.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/new/D_FF.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/imports/new/Decoder_2_to_4.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/imports/new/Decoder_3_to_8.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Desktop/test4/test4.srcs/sources_1/new/Decorder_2_4.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Desktop/test4/test4.srcs/sources_1/new/Decorder_3_8.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/new/Display.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/imports/new/FA.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/new/HA.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/Instruction_decoder.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/new/LUT_16_7.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/MUX_2_way_3bit.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/MUX_2_way_4bit.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/MUX_8_to_1.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Downloads/Program_Counter/Program_Counter.srcs/sources_1/new/PC.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/ProgramROM.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/new/RCA.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/RCA3Bit.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Desktop/test6/test6.srcs/sources_1/new/Reg.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Downloads/RegisterBank/RegisterBank.srcs/sources_1/new/RegBank.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/Downloads/RegisterBank/RegisterBank.srcs/sources_1/imports/new/Slow_Clk.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/tri_state_buffer_3bit.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/imports/sources_1/new/tri_state_buffer_4bit.vhd
  D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/sources_1/new/nanoprocessor.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/constrs_1/imports/Labs/Basys3Labs.xdc
set_property used_in_implementation false [get_files D:/Labs/nanoprocessor_78_final/nanoprocessor_78_final/nanoprocessor_1/nanoprocessor_1.srcs/constrs_1/imports/Labs/Basys3Labs.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top nanoprocessor -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef nanoprocessor.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file nanoprocessor_utilization_synth.rpt -pb nanoprocessor_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
