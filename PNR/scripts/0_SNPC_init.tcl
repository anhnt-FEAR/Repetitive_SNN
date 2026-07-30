# place and route script
# version : 1.0
global env

#set OSU_FREEPDK $env(FREEPDK45)/osu_soc
set module_name "SNPC"

setLibraryUnit -cap 1.0pf


win

source ./scripts/$module_name.globals
set init_mmmc_file ./scripts/$module_name.view

init_design
set_ccopt_property buffer_cells  "CLKBUF_X1 CLKBUF_X2 CLKBUF_X3"
setDesignMode -process 45

saveDesign ./checkpoints/$module_name.post_init.enc
