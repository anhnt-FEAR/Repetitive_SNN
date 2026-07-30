set module_name "SNPC"

set SPLIT_RAM 0
#addRing -nets {VDD VSS} -width 0.6 -spacing 0.5 -layer [list top 7 bottom 7 left 6 right 6]

# This script is to place the macro cell
set TILE_DIM 100.0
set NOC_DIM 800.0
set SPACE_BETWEEN_TILE 5
if { $SPLIT_RAM } {
    set SRAM_WIDTH 40
    set SRAM_WIDTH_VAL 5
    set SRAM_HEIGHT 76
    set SRAM_HEIGHT_VAL 2
} else {
    set SRAM_WIDTH 63
    #set LB_SRAM_WIDTH 735
    #set LB_SRAM_HEIGHT 39
    set SRAM_WIDTH_VAL 5
    set SRAM_HEIGHT_VAL 2
    set SRAM_HEIGHT 71
}
set TSV_DIM 5.0
set TSV_KoZ 15.0

set start_X_000 30.0
set start_Y_000 30.0

set start_X_001 [expr {$TILE_DIM+$start_X_000}]
set start_Y_001 [expr {0+$start_Y_000}]

set start_X_010 [expr {0+$start_X_000}]
set start_Y_010 [expr {$TILE_DIM+$start_Y_000}]

set start_X_011 [expr {$TILE_DIM+$start_X_000}]
set start_Y_011 [expr {$TILE_DIM++$start_Y_000}]

##################################################################
# SRAM placement
##################################################################

set SRAM_START_X [expr {$start_X_000+0*$TILE_DIM}]
set SRAM_START_Y [expr {$start_Y_000+0*$TILE_DIM}]

for {set SRAM_ROW 0} {$SRAM_ROW < $SRAM_HEIGHT_VAL} {incr SRAM_ROW} {
    for {set SRAM_COL 0} {$SRAM_COL < $SRAM_WIDTH_VAL} {incr SRAM_COL} {
	if { $SPLIT_RAM } {
	    set SRAM_ID [expr {$SRAM_ROW*$SRAM_WIDTH_VAL+$SRAM_COL}]
	    set SRAM_X [expr {$SRAM_COL*$SRAM_WIDTH+$SRAM_START_X}]
	    set SRAM_Y [expr {$SRAM_ROW*$SRAM_HEIGHT+$SRAM_START_Y}]
	    placeInstance XBAR0/GEN_RAM[$SRAM_ID].R0 $SRAM_X $SRAM_Y

	    set SRAM_X [expr {$SRAM_COL*$SRAM_WIDTH+$SRAM_START_X}]
	    set SRAM_Y [expr {$SRAM_ROW*$SRAM_HEIGHT+$SRAM_START_Y}]
	    placeInstance XBAR0/GEN_RAM[$SRAM_ID].R1 $SRAM_X $SRAM_Y

	    set SRAM_X [expr {$SRAM_COL*$SRAM_WIDTH+$SRAM_START_X}]
	    set SRAM_Y [expr {$SRAM_ROW*$SRAM_HEIGHT+$SRAM_START_Y}]
	    placeInstance XBAR0/GEN_RAM[$SRAM_ID].R2 $SRAM_X $SRAM_Y

	    set SRAM_X [expr {$SRAM_COL*$SRAM_WIDTH+$SRAM_START_X}]
	    set SRAM_Y [expr {$SRAM_ROW*$SRAM_HEIGHT+$SRAM_START_Y}]
	    placeInstance XBAR0/GEN_RAM[$SRAM_ID].R3 $SRAM_X $SRAM_Y
	} else {
	    set SRAM_ID [expr {$SRAM_ROW*$SRAM_WIDTH_VAL+$SRAM_COL}]
	    set SRAM_X [expr {$SRAM_COL*$SRAM_WIDTH+$SRAM_START_X}]
	    set SRAM_Y [expr {$SRAM_ROW*$SRAM_HEIGHT +$SRAM_START_Y}]
	    placeInstance XBAR0/GEN_RAM[$SRAM_ID].R0 $SRAM_X $SRAM_Y
	}
    }
}
#    placeInstance XBAR0 $SRAM_START_X  $SRAM_START_Y
#    set LB_SRAM_X [expr {$SRAM_START_X}]
#    set LB_SRAM_Y [expr {16*$SRAM_HEIGHT +$SRAM_START_Y}]
#    placeInstance LB0/PRE_SYN_R0 $LB_SRAM_X  $LB_SRAM_Y
createObstruct $SRAM_START_X $SRAM_START_Y [expr {$SRAM_WIDTH_VAL*$SRAM_WIDTH+$SRAM_START_X}] [expr {$SRAM_HEIGHT_VAL*$SRAM_HEIGHT +$SRAM_START_Y}] 

set START_RING_X [expr {$SRAM_START_X+0}]
set START_RING_Y [expr {$SRAM_START_Y+0}]

set END_RING_X [expr {$SRAM_WIDTH_VAL*$SRAM_WIDTH+$SRAM_START_X}] 
set END_RING_Y [expr {$SRAM_HEIGHT_VAL*$SRAM_HEIGHT +$SRAM_START_Y}]

addRing -nets {VDD VSS}  -width 0.6 -spacing 0.5 -layer [list top 7 bottom 7 left 6 right 6] -type block_rings -around user_defined -user_defined_region [list $START_RING_X $START_RING_Y $START_RING_X  $END_RING_Y $END_RING_X $END_RING_Y $END_RING_X $START_RING_Y]

setAddStripeMode -break_at { block_ring }

addStripe -nets {VSS VDD} -layer 6 -direction vertical -width 0.4 -spacing 0.5 -set_to_set_distance 50

saveDesign ./checkpoints/$module_name.post_mplace.enc
