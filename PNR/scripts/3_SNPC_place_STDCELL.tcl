set module_name "SNPC"

#placeDesign

setPlaceMode -fp true
place_design

saveDesign ./checkpoints/$module_name.post_place.enc

