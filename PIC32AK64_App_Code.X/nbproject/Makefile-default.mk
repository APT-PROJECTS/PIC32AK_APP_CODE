#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/device_stat.c ../src/driver/diagnostics.c ../src/driver/driver_CANbus.c ../src/driver/driver_UART.c ../src/driver/driver_mcp2515.c ../src/driver/fault.c ../src/driver/flash_eeprom.c ../src/driver/mcu_config.c ../src/driver/tuning.c ../src/middleware/boot_handler.c ../src/software/state_engine.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/device_stat.o ${OBJECTDIR}/_ext/362756510/diagnostics.o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o ${OBJECTDIR}/_ext/362756510/driver_UART.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/fault.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/362756510/mcu_config.o ${OBJECTDIR}/_ext/362756510/tuning.o ${OBJECTDIR}/_ext/1375476428/boot_handler.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/traps.o.d ${OBJECTDIR}/_ext/362756510/device_stat.o.d ${OBJECTDIR}/_ext/362756510/diagnostics.o.d ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d ${OBJECTDIR}/_ext/362756510/driver_UART.o.d ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d ${OBJECTDIR}/_ext/362756510/fault.o.d ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d ${OBJECTDIR}/_ext/362756510/mcu_config.o.d ${OBJECTDIR}/_ext/362756510/tuning.o.d ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d ${OBJECTDIR}/_ext/1200941409/state_engine.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/device_stat.o ${OBJECTDIR}/_ext/362756510/diagnostics.o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o ${OBJECTDIR}/_ext/362756510/driver_UART.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/fault.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/362756510/mcu_config.o ${OBJECTDIR}/_ext/362756510/tuning.o ${OBJECTDIR}/_ext/1375476428/boot_handler.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/device_stat.c ../src/driver/diagnostics.c ../src/driver/driver_CANbus.c ../src/driver/driver_UART.c ../src/driver/driver_mcp2515.c ../src/driver/fault.c ../src/driver/flash_eeprom.c ../src/driver/mcu_config.c ../src/driver/tuning.c ../src/middleware/boot_handler.c ../src/software/state_engine.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32AK6416GC41064
MP_LINKER_FILE_OPTION=,--script=p32AK6416GC41064.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/e222e9598ed205e3fcd9b18a46fe1d6467b09ae1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/716c2037349d81570877a29040e01c61c2a79daa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/f2109a38bc3040fa87e73c4d84d7015b24ccb07a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/4c122c4634e64d036de219f77dea70176c5cffdf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/ff7db34a7a5dde1d6605451c3aeba2c95083d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/2db2c1222f8ef43322eeb123a8456ae8e21ee472 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/f6650fc82a6335e8013eeef7adf50c2472427d7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/20a07fcdf2c22b4e8d1b5fc3da983f05da481651 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/e090711d915e6cf74d6ea21ef0336dcdb9bd2526 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/fa5627e89057809c044a452a6e7ba96590d2856 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/e5b614c5dc1a8015bd7277206c2d013ca0261a90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/device_stat.o: ../src/driver/device_stat.c  .generated_files/flags/default/e2ff905227d362137563a11020d0dcf01aac784e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/device_stat.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/device_stat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/device_stat.c  -o ${OBJECTDIR}/_ext/362756510/device_stat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/device_stat.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/diagnostics.o: ../src/driver/diagnostics.c  .generated_files/flags/default/e072b0efeddab8b080579c45ca125384de0e26e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/diagnostics.c  -o ${OBJECTDIR}/_ext/362756510/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/diagnostics.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_CANbus.o: ../src/driver/driver_CANbus.c  .generated_files/flags/default/d7931385d03681d743c04db4ab0bb8c14abebd3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_CANbus.c  -o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_UART.o: ../src/driver/driver_UART.c  .generated_files/flags/default/b5b4fe2fedb4763116dfe36cd81d83374c936256 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_UART.c  -o ${OBJECTDIR}/_ext/362756510/driver_UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_UART.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/25fb9fe2aa992cbc8ce8e20387b6d0d58d0502d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/fault.o: ../src/driver/fault.c  .generated_files/flags/default/a9a221e8f7d2af42973208995655a698d8f3bd8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/fault.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/fault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/fault.c  -o ${OBJECTDIR}/_ext/362756510/fault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/fault.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/8c1e54bd413e51c302d84596812ef815a2a3191e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/mcu_config.o: ../src/driver/mcu_config.c  .generated_files/flags/default/a3c490718f26d1e109682997928ed3b8ff065f3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/mcu_config.c  -o ${OBJECTDIR}/_ext/362756510/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/mcu_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/tuning.o: ../src/driver/tuning.c  .generated_files/flags/default/e48315f25c50cd14e210a6f2f80aa114f74b45fc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/tuning.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/tuning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/tuning.c  -o ${OBJECTDIR}/_ext/362756510/tuning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/tuning.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot_handler.o: ../src/middleware/boot_handler.c  .generated_files/flags/default/9ec4a8df56a2d659e4913ec2ad3b5377b95bec58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot_handler.c  -o ${OBJECTDIR}/_ext/1375476428/boot_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot_handler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/d8737f885a039f84e8e709a370132914cd071cf9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/cf24710ebe5ed94e30606aef6b3074212b895855 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/f7a84a2a35b31eff5e7da514f8849cf40046df8d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/6e5ca1da46124288dc91d8f9bacd7d6cd1a40b96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/a94ea44a665fb36550e5032f3653487eec184e3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/47ba40d1d8eb25f6249d9b7a8fd26d8c0568e8aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/f4463db0481531a478eec939b50f07950c4f918 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/f3303ad9b9e79891b89f46a7621b4d16abd1339 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/71190bce2d364803cc86b3be0f4d6fd99bcecd91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/2abbe75b49e5be22b356f30b6879ba12ddc1e56b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/2fae082c96b84c974c47d5b20574490c3fdfeb23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/b915eb2527604d1066020490989ba30968bf9c35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/c272c65a1ec11fc1a6426217f81b90dffb7c406e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/device_stat.o: ../src/driver/device_stat.c  .generated_files/flags/default/e554ca4fe0d4db97df6b299aa99139a4d5218968 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/device_stat.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/device_stat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/device_stat.c  -o ${OBJECTDIR}/_ext/362756510/device_stat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/device_stat.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/diagnostics.o: ../src/driver/diagnostics.c  .generated_files/flags/default/df043e3582d61d6c47f48a0fb40b2e8f56ffab9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/diagnostics.c  -o ${OBJECTDIR}/_ext/362756510/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/diagnostics.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_CANbus.o: ../src/driver/driver_CANbus.c  .generated_files/flags/default/940ce34758b1443e5f255be12da4209b1a77fffb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_CANbus.c  -o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_UART.o: ../src/driver/driver_UART.c  .generated_files/flags/default/4faf00d74de2eabff286812e255f50e38411a7a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_UART.c  -o ${OBJECTDIR}/_ext/362756510/driver_UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_UART.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/ca711ba9de8b3e5d257cd71f47bedae1d311d127 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/fault.o: ../src/driver/fault.c  .generated_files/flags/default/9c9d41b8c66a85b3eb30f4f1ca1f380be05e39ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/fault.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/fault.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/fault.c  -o ${OBJECTDIR}/_ext/362756510/fault.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/fault.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/b3cd2c0844d2e91ef8f98c2ff2c514f2cbdb5c73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/mcu_config.o: ../src/driver/mcu_config.c  .generated_files/flags/default/121ffed310e7d431d2b298d38d991d68009c6327 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/mcu_config.c  -o ${OBJECTDIR}/_ext/362756510/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/mcu_config.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/tuning.o: ../src/driver/tuning.c  .generated_files/flags/default/8dfdae7451d8244a084e2f7b356f7a9ff8d5820b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/tuning.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/tuning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/tuning.c  -o ${OBJECTDIR}/_ext/362756510/tuning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/tuning.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot_handler.o: ../src/middleware/boot_handler.c  .generated_files/flags/default/e29ba5e6f8d42c1e7d721b3b68f3066a5ab47f02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot_handler.c  -o ${OBJECTDIR}/_ext/1375476428/boot_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot_handler.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/d485d23656d83299836abc463bb1ada7b06cdba5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/c6435cfae218431732ae53329f0d35ee90b174bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1  -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PICKITBASIC=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	
else
${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/PIC32AK64_App_Code.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a   -mdfp="${DFP_DIR}/xc32" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
