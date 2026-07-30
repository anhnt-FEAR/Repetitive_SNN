set module_name "SNPC"

sroute -connect {corePin} -nets {VDD VSS}
#sroute -connect {corePin} -nets vdd
#sroute -connect {corePin} -nets gnd
#sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 TM } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1 TM } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1 TM }
saveDesign ./checkpoints/$module_name.post_sroute.enc

setCTSMode -engine ccopt
create_ccopt_clock_tree -name MY_CLK -source clk
ccopt_design
report_ccopt_clock_trees -file ./reports/clock_trees.rpt
report_ccopt_skew_groups -file ./reports/skew_groups.rpt
report_timing -unconstrained -delay_limit 20 > ./reports/timing_report_postCCopt.rpt 
saveDesign ./checkpoints/$module_name.post_cts.enc

routeDesign -globalDetail

setFillerMode -corePrefix FILL -core "FILLCELL_X4 FILLCELL_X2 FILLCELL_X1"
#addFiller
saveDesign ./checkpoints/$module_name.post_route.enc
