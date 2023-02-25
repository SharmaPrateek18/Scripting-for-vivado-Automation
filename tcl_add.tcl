open_project [pwd]/Automation/Automation.xpr
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]


foreach module_name $argv {
	add_files -norecurse [pwd]/Directory/Modules/$module_name
}

update_compile_order -fileset sources_1

close_project
