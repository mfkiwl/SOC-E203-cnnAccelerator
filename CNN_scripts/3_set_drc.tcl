#=============================================================================
# Set DRC on SPI ,DRC:check for design rule
#set_wire_load_model -name reference_area_10000000
set_auto_disable_drc_nets -constant false
#set_fix_multiple_port_net -all -buffer_constant 
#Specify the -constants option to duplicate constant logic so that no constant drives more than one output port. Alternatively, you can use the -buffer_constants option to
#buffer logic constants instead of duplicating them.
set compile_seqmap_propagate_constants false
#Controls whether the compile command tries to identify and remove constant registers and propagate the constant value throughout the design.

foreach_in_collection itr [get_designs * -h] {
    
    set_max_transition 0.5 $itr
    set_max_fanout  20  $itr
    set_auto_disable_drc_nets -constant false
    set compile_seqmap_propagate_constants false
       
}

current_design $top


