
#floorPlan -r 1.2 0.6  15 15 15 15
#floorPlan -s {1370 1450 15 15 15 15} -coreMarginsBy die
floorPlan -s {350 200 15 15 15 15} -coreMarginsBy die
addHaloToBlock 0.5 0.5 0.5 0.5 -allBlock



globalNetConnect VDD -type pgpin -pin VDD -inst * -verbose
globalNetConnect VSS -type pgpin -pin VSS -inst * -verbose

addRing -nets {VDD VSS} -width 0.6 -spacing 0.5 -layer [list top 7 bottom 7 left 6 right 6]

#addStripe -nets {VSS VDD} -layer 6 -direction vertical -width 0.4 -spacing 0.5 -set_to_set_distance 15 -start 30.0 

#addStripe -nets {VSS VDD} -layer 7 -direction horizontal -width 0.4 -spacing 0.5 -set_to_set_distance 15 -start 30.0

#addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer TM -type core_rings -jog_distance 1.0 -threshold 1.0 -nets {gnd vdd} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal10 top metal10 right metal9 left metal9} -width 4 -spacing 2
#addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit metal9 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal7 -set_to_set_distance 50 -skip_via_on_pin Standardcell -stacked_via_top_layer TM -padcore_ring_top_layer_limit metal9 -spacing 2 -xleft_offset 35 -merge_stripes_value 1.0 -layer metal8 -block_ring_bottom_layer_limit metal7 -width 4 -nets {gnd vdd} -stacked_via_bottom_layer metal1
#
#
#
