set module_name "SNPC"


verifyConnectivity -type all -error 1000 -warning 50 -report ./reports/top.connect
verifyGeometry -report ./reports/top.geo
verify_drc   -report ./reports/top_soc.drc

defOut -floorplan -netlist -routing ./output_files/$module_name.def
saveNetlist ./output_files/$module_name.v
saveDesign ./checkpoints/$module_name.final.enc
