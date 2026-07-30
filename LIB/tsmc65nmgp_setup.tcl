set PDK_HOME_DIR "/home/dkits/tsmc_65/TSMCHOME/digital/Back_End"
set PDK_LIB_DIR "/home/dkits/tsmc_65/TSMCHOME/digital/Front_End/timing_power_noise"
set PDK_MILKYWAY_DIR "${PDK_HOME_DIR}/milkyway"
set PDK_LIB_PREFIX "tcbn65gplus"
set PDK_LIB_VERSION "200a"

## PDK_LIB_CELL_TYPE
##   SVT: "" (empty string)
##   LVT: "lvt"
##   HVT: "hvt"
set PDK_LIB_CELL_TYPE ""

## PDK_LIB_TYPE
##   CCS   # accurate but slow
##   ECSM  # not recommended for synopsys tools
##   NLDM  # fast but not so accurate
set PDK_LIB_TYPE                    "NLDM"
# set PDK_LIB_TYPE                    "CCS"
set PDK_LIB_TYPE_LOWERCASE          [string tolower $PDK_LIB_TYPE]
if { $PDK_LIB_TYPE == "CCS" } {
    set LIB_SUFFIX "_ccs"
} else {
    set LIB_SUFFIX ""
}

set LIB_TYP_CONNER                  "tc"
set LIB_BEST_CONNER                 "bc"
set LIB_WORST_CONNER                "wc"
set TYP_LIB_FILE                    "${PDK_LIB_PREFIX}${LIB_TYP_CONNER}${LIB_SUFFIX}.db"
set MIN_LIB_FILE                    "${PDK_LIB_PREFIX}${LIB_BEST_CONNER}${LIB_SUFFIX}.db"
set MAX_LIB_FILE                    "${PDK_LIB_PREFIX}${LIB_WORST_CONNER}${LIB_SUFFIX}.db"
set MW_DEFAULT_DIR                  "${PDK_HOME_DIR}/milkyway/${PDK_LIB_PREFIX}_${PDK_LIB_VERSION}"
set MW_LIB_DIRS                     "${MW_DEFAULT_DIR}/cell_frame/${PDK_LIB_PREFIX}${PDK_LIB_CELL_TYPE}"
set __DESIGN_REF_DATA_PATH          "${PDK_LIB_DIR}/${PDK_LIB_TYPE}/${PDK_LIB_PREFIX}${PDK_LIB_CELL_TYPE}_${PDK_LIB_VERSION} \
				     ${PDK_LIB_DIR}/NLDM/tpzn65gpgv2od3_200a \
				    "  ;#  Absolute path prefix variable for library/design data.
                                       #  Use this variable to prefix the common absolute path  
                                       #  to the common variables defined below.
                                       #  Absolute paths are mandatory for hierarchical 
                                       #  reference methodology flow.

set __ADDITIONAL_SEARCH_PATH        "$__DESIGN_REF_DATA_PATH ../SRAM"  ;#  Additional search path to be added to the default search path

set __TARGET_LIBRARY_FILES          "${TYP_LIB_FILE} sp_ram1024x8_${PDK_LIB_TYPE_LOWERCASE}_tt_1p00v_1p00v_25c_syn.db tpzn65gpgv2od3tc.db"  ;#  Target technology logical libraries
set __ADDITIONAL_LINK_LIB_FILES     ""  ;#  Extra link logical libraries not included in TARGET_LIBRARY_FILES

set __MIN_LIBRARY_FILES             "${MAX_LIB_FILE} ${MIN_LIB_FILE} sp_ram1024x8_${PDK_LIB_TYPE_LOWERCASE}_ss_0p90v_0p90v_125c_syn.db sp_ram1024x8_${PDK_LIB_TYPE_LOWERCASE}_ff_1p10v_1p10v_m40c_syn.db tpzn65gpgv2od3wc.db tpzn65gpgv2od3bc.db"  ;#  List of max min library pairs "max1 min1 max2 min2 max3 min3"...

set __MW_REFERENCE_LIB_DIRS         "$MW_LIB_DIRS ../lib_preparation/ref_lib/memory_lib ${PDK_MILKYWAY_DIR}/tpzn65gpgv2od3_200a/mt_2/9lm/cell_frame/tpzn65gpgv2od3 ${PDK_MILKYWAY_DIR}/tpbn65v_200b/cup/9m/9M_6X2Z/cell_frame/tpbn65v"  ;#  Milkyway reference libraries (include IC Compiler ILMs here)

set __MW_REFERENCE_CONTROL_FILE     ""  ;#  Reference Control file to define the Milkyway reference libs

set __TECH_FILE                     "${MW_DEFAULT_DIR}/techfiles/tsmcn65_9lmT2.tf"  ;#  Milkyway technology file
set __MAP_FILE                      "${MW_DEFAULT_DIR}/techfiles/tluplus/star.map_9M"  ;#  Mapping file for TLUplus
set __TLUPLUS_MAX_FILE              "${MW_DEFAULT_DIR}/techfiles/tluplus/cln65g+_1p09m+alrdl_rcworst_top2.tluplus"  ;#  Max TLUplus file
set __TLUPLUS_MIN_FILE              "${MW_DEFAULT_DIR}/techfiles/tluplus/cln65g+_1p09m+alrdl_rcbest_top2.tluplus"  ;#  Min TLUplus file

set __MIN_ROUTING_LAYER            "M1"   ;# Min routing layer
set __MAX_ROUTING_LAYER            "M7"   ;# Max routing layer

set __LIBRARY_DONT_USE_FILE        ""   ;# Tcl file with library modifications for dont_use
set __LIBRARY_DONT_USE_PRE_COMPILE_LIST ""; #Tcl file for customized don't use list before first compile
set __LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST "";# Tcl file with library modifications for dont_use before incr compile
