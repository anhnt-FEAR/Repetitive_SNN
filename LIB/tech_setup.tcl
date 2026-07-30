set PDK_HOME_DIR "/home/dkits/FreePDK45/NangateOpenCellLibrary_PDKv1_3_v2010_12/"
set PDK_LIB_DIR "${PDK_HOME_DIR}/Front_End/db/"
set PDK_MILKYWAY_DIR ""
set PDK_LIB_PREFIX "NangateOpenCellLibrary"
set PDK_LIB_VERSION ""

## PDK_LIB_CELL_TYPE
##   SVT: "" (empty string)
##   LVT: "lvt"
##   HVT: "hvt"
set PDK_LIB_CELL_TYPE ""

## PDK_LIB_TYPE
##   CCS   # accurate but slow
##   ECSM  # not recommended for synopsys tools
##   NLDM  # fast but not so accurate
# set PDK_LIB_TYPE                    "NLDM"
set PDK_LIB_TYPE                    "CCS"
set PDK_LIB_TYPE_LOWERCASE          [string tolower $PDK_LIB_TYPE]
if { $PDK_LIB_TYPE == "CCS" } {
    set LIB_SUFFIX "_ccs"
} else {
    set LIB_SUFFIX ""
}

set LIB_TYP_CONNER                  "_typical"
set LIB_BEST_CONNER                 "_fast"
set LIB_WORST_CONNER                "_slow"
set TYP_LIB_FILE                    "${PDK_LIB_DIR}${PDK_LIB_TYPE}/${PDK_LIB_PREFIX}${LIB_TYP_CONNER}${LIB_SUFFIX}.db"
set MIN_LIB_FILE                    "${PDK_LIB_DIR}${PDK_LIB_TYPE}/${PDK_LIB_PREFIX}${LIB_BEST_CONNER}${LIB_SUFFIX}.db"
set MAX_LIB_FILE                    "${PDK_LIB_DIR}${PDK_LIB_TYPE}/${PDK_LIB_PREFIX}${LIB_WORST_CONNER}${LIB_SUFFIX}.db"
set MW_DEFAULT_DIR                  "${PDK_HOME_DIR}/Back_End/virtuoso"
set MW_LIB_DIRS                     "${MW_DEFAULT_DIR}/${PDK_LIB_PREFIX}${PDK_LIB_CELL_TYPE}"
set __DESIGN_REF_DATA_PATH          "${PDK_LIB_DIR} \
				    "  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path  
                                       #  to the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical 
                                       #  reference methodology flow.

set __ADDITIONAL_SEARCH_PATH        "$__DESIGN_REF_DATA_PATH ../SRAM"  ;#  Additional search path to be added to the default search path

set __TARGET_LIBRARY_FILES          "${TYP_LIB_FILE} \
                                      sram_sp_w8_b1024_freepdk45_TT_1p0V_25C.db \
                                    ";#  Target technology logical libraries
set __ADDITIONAL_LINK_LIB_FILES     ""  ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set __MIN_LIBRARY_FILES             "${MAX_LIB_FILE} ${MIN_LIB_FILE} \
                                     sram_sp_w8_b1024_freepdk45_SS_1p0V_25C.db sram_sp_w8_b1024_freepdk45_FF_1p0V_25C.db \
                                     "  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set __MW_REFERENCE_LIB_DIRS         "${MW_LIB_DIRS}"  ;#  Milkyway reference libraries (include IC Compiler ILMs here)

set __MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set __TECH_FILE                     "technology.tf"  ;#  Milkyway technology file
set __MAP_FILE                      ""  ;#  Mapping file for TLUplus
set __TLUPLUS_MAX_FILE              ""  ;#  Max TLUplus file
set __TLUPLUS_MIN_FILE              ""  ;#  Min TLUplus file

set __MIN_ROUTING_LAYER            "M1"   ;# Min routing layer
set __MAX_ROUTING_LAYER            "M7"   ;# Max routing layer

set __LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use
set __LIBRARY_DONT_USE_PRE_COMPILE_LIST ""; #Tcl file for customized don't use list before first compile
set __LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST "";# Tcl file with library modifications for dont_use before incr compile
