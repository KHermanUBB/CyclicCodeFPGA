
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name FPGA -dir "F:/ISE/CyclicCodeFPGA/VHDL/planAhead_run_1" -part xc6slx16csg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "F:/ISE/CyclicCodeFPGA/VHDL/coder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {F:/ISE/CyclicCodeFPGA/VHDL} }
set_property target_constrs_file "coder.ucf" [current_fileset -constrset]
add_files [list {coder.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "F:/ISE/CyclicCodeFPGA/VHDL/coder.ncd"
if {[catch {read_twx -name results_1 -file "F:/ISE/CyclicCodeFPGA/VHDL/coder.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"F:/ISE/CyclicCodeFPGA/VHDL/coder.twx\": $eInfo"
}
