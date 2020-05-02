#------------------------------------------------------------------------------
# (#03) CREATE FLOORPLAN
#------------------------------------------------------------------------------
source tcl/00_common_settings.tcl

# TODO Menu: Floorplan -> Specify Floorplan
# Aspect Ratio: 1.0
# Core Utilization: 0.7
# Core to IO Boundary from all the sides: 20 um

# create_floorplan
create_floorplan -site CoreSite -core_density_size 1 0.7 20 20 20 20

# TODO Menu: Power -> Power Planning -> Add Ring ...
#------------------------------------------------------------------------------
# Generate following rings:
# - vddd, 5 um width
# - gndd, 5 um width
# - vddb, 2 um width
# - gndb, 2 um width
# The layers should be ME3 for Top and Bottom and ME4 for Left and Right.
# The rings should be extended to top and bottom. See the included pictures
# and use the Advance tab.
#
# Note: if incorrect ring was created, use Undo (key: u) function
# or select the ring elements with the mouse and use Del key.
#
# Note: you will have to make vddd and gndd rings first, than
# vddb and gndb (set the correct value of the offset).

# add_rings
add_rings -nets {vddd gndd} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 2 bottom 2 left 2 right 2} -center 0 -extend_corners {lt rt lb rb} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
add_rings -nets {vddb gndb} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 12.9 bottom 12.9 left 12.9 right 12.9} -center 0 -extend_corners {lt rt lb rb} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none

# TODO Menu: Power -> Power Planning -> Add Stripe ...
#------------------------------------------------------------------------------
# Generate 1 vertical ME5 and 1 horizontal ME4 stripe for vddd and gndd.
# Width: 5 um, located in the center of the square (use "Relative from core or
# selected area" setting to locate the stripe).

# add_stripes 
eval_legacy { addStripe -nets gndd -layer ME5 -direction horizontal -width 5 -spacing 1.8 -number_of_sets 1 -start_from bottom -start 168.26 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }

eval_legacy { addStripe -nets vddd -layer ME5 -direction horizontal -width 5 -spacing 1.8 -number_of_sets 1 -start_from bottom -start 161.46 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }

eval_legacy { addStripe -nets gndd -layer ME4 -direction vertical -width 5 -spacing 1.8 -number_of_sets 1 -start_from left -start 176.9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }

eval_legacy { addStripe -nets vddd -layer ME4 -direction vertical -width 5 -spacing 1.8 -number_of_sets 1 -start_from left -start 170.1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }

# TODO: Menu: Route -> Special route ...
#------------------------------------------------------------------------------
#	Basic TAB:
#       	Sroute: select "Follow pins" only
#		Net(s): vddd gndd
#		Allow jogging: off
#	Via generation TAB:
#		Make via connections to: Stripe

# set_db route_special_via_connect_to_shape stripe
# route_special
route_special -connect {core_pin} -layer_change_range { ME1(1) ME6(6) } -block_pin_target {nearest_target} -core_pin_target {first_after_row_end} -allow_jogging 0 -crossover_via_layer_range { ME1(1) ME6(6) } -nets { vddd gndd vddb gndb } -allow_layer_change 1 -target_via_layer_range { ME1(1) ME6(6) }


# suspend

# place pins
#------------------------------------------------------------------------------
# The input pins (clk, rst_n, sin) should be placed on the left of the block 
# the output (sout) on the right.
# All signal pins should be on the ME3 layer.
#

edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin clk
edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin rst_n
edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin sin
edit_pin -fix_overlap 1 -side Right -layer 3 -assign 0.0 0.0 -pin sout

# TODO Menu: File -> Save -> I/O File, select "sequence". Copy the file
# to "$DESIGN.io" and modify it to get required locations and layers
    
write_io_file -by_order mtm_Alu.save.io
read_io_file mtm_Alu.save.io


# suspend
