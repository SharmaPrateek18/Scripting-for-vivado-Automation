open_project [pwd]/Automation/Automation.xpr
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1

set_property top $argv [current_fileset]
update_compile_order -fileset sources_1

reset_run synth_1
launch_runs synth_1 -jobs 8

reset_run impl_1
launch_runs impl_1 -jobs 8

set x 0
while {$x !=1} {
	if {[catch {open_run impl_1}]} {
		set x 0
		continue } \
	else { set x 1 }
}

report_power > Impl/$argv/power.txt
report_timing > Impl/$argv/timing.txt
report_utilization > Impl/$argv/utilization.txt

close_project
