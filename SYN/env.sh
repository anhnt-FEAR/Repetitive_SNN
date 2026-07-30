###################################################################################
# Environment variables to be used in the reference flow                          #
# These variable must be set correctly before running the reference flow scripts  #
# TOOL SETUPS                                                                     #
###################################################################################
export PROJECT_ROOT=`pwd`/..

# Environment variable
#             SYNOPSYS_HOME=""
#             MENTOR_HOME=""
#             MODELSIM_HOME=""
#             DESIGN_KIT_PATH=""

###################################################################################
# Critical ENV                                                                    #
###################################################################################

# Define the clock period in ns
export CLOCK_PERIOD=10.0
export DESIGN_NAME="SNPC_top"

# Technology lib type: possible value: NLDM, CCS, ECSM for Nangate 45nm
export PDK_LIB_TYPE="CCS"
export DESIGN_KIT_PATH=/home/dkits/FreePDK45/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS/

# For post-synthesis simulation & power estimation
export DESIGN_NETLIST="${PROJECT_DIR}/SYN/results/${DESIGN_NAME}.mapped.v"
export DESIGN_VCD_FILE="${PROJECT_DIR}/SIM/${DESIGN_NAME}.vcd"
export DESIGN_INSTANCE_PATH="/TB_SNPC_MNIST/DUT"
export DESIGN_SDF_FILE="${PROJECT_DIR}/SYN/results/${DESIGN_NAME}.mapped.sdf"
export DESIGN_CONSTRAINT_FILE="${DESIGN_NAME}.mapped.sdc"

echo "
-----------------------------------------------------------------------------------
PROJECT_PARAMETERS
-----------------------------------------------------------------------------------
PROJECT_DIRECTORY = ${PROJECT_DIR}
DESIGN_KIT_PATH   = ${DESIGN_KIT_PATH}
DESIGN_NAME       = ${DESIGN_NAME}
CLOCK_PERIOD      = ${CLOCK_PERIOD}
-----------------------------------------------------------------------------------
"
