#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file /home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/launch_synplify.tcl
#-- Written on Wed Aug  7 16:14:43 2024

project -close
set filename "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology ECP5U
set_option -part LFE5U_85F
set_option -package BG381C
set_option -speed_grade -6

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 200
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -include_path "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/top.sv"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/Mixer.sv"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/AMDemod.sv"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/CIC.sv"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/NCO.sv"
add_file -verilog -vlog_std sysv "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/PWM.sv"
add_file -verilog -vlog_std v2001 "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/PLL.v"
add_file -verilog -vlog_std v2001 "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/SinCos.v"
add_file -verilog -vlog_std v2001 "/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/source/UartRX.v"
#-- top module name
set_option -top_module {}
project -result_file {/home/user/SDR-HLS/1.RTLImplementation/3.lattice/Version2/systemverilog/impl1/impl1.edi}
project -save "$filename"
