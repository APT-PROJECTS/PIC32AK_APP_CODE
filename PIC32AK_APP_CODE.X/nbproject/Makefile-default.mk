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
FINAL_IMAGE=${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/driver_mcp2515.c ../src/driver/flash_eeprom.c ../src/driver/driver_uart.c ../src/driver/driver_can.c ../src/middleware/diagnostics.c ../src/middleware/metadata.c ../src/middleware/boot.c ../src/software/state_engine.c ../src/software/mcu_config.c ../src/main.c ../src/middleware/tuner.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/362756510/driver_uart.o ${OBJECTDIR}/_ext/362756510/driver_can.o ${OBJECTDIR}/_ext/1375476428/diagnostics.o ${OBJECTDIR}/_ext/1375476428/metadata.o ${OBJECTDIR}/_ext/1375476428/boot.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1200941409/mcu_config.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1375476428/tuner.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/traps.o.d ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d ${OBJECTDIR}/_ext/362756510/driver_uart.o.d ${OBJECTDIR}/_ext/362756510/driver_can.o.d ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d ${OBJECTDIR}/_ext/1375476428/metadata.o.d ${OBJECTDIR}/_ext/1375476428/boot.o.d ${OBJECTDIR}/_ext/1200941409/state_engine.o.d ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1375476428/tuner.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/362756510/driver_uart.o ${OBJECTDIR}/_ext/362756510/driver_can.o ${OBJECTDIR}/_ext/1375476428/diagnostics.o ${OBJECTDIR}/_ext/1375476428/metadata.o ${OBJECTDIR}/_ext/1375476428/boot.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1200941409/mcu_config.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1375476428/tuner.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/driver_mcp2515.c ../src/driver/flash_eeprom.c ../src/driver/driver_uart.c ../src/driver/driver_can.c ../src/middleware/diagnostics.c ../src/middleware/metadata.c ../src/middleware/boot.c ../src/software/state_engine.c ../src/software/mcu_config.c ../src/main.c ../src/middleware/tuner.c



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32AK1216GC41064
ProjectDir="D:\APT-PROJECTS\BOOT_APP\PIC32AK_BOOT_APP\PIC32AK_APP_CODE\PIC32AK_APP_CODE.X"
ProjectName=PIC32AK_APP_CODE
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif
MDFUHostPath="C:\Program Files\Microchip\MPLABX\v6.30\mplab_platform\mplab-pymdfu\bin\windows\pymdfu-bin.exe"
PYFWImageBuilderPath="C:\Program Files\Microchip\MPLABX\v6.30\mplab_platform\mplab-pymdfu\bin\windows\pyfwimagebuilder-bin.exe"

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: ["C:\Program Files\Microchip\xc32\v5.00\bin\xc32-objcopy.exe" -O binary -R .config_* -R .comment -R .debug* -R __c30_signature "dist\default\debug\PIC32AK_APP_CODE.X.debug.elf" "dist\default\debug\PIC32AK_APP_CODE.bin"]"
	@"C:\Program Files\Microchip\xc32\v5.00\bin\xc32-objcopy.exe" -O binary -R .config_* -R .comment -R .debug* -R __c30_signature "dist\default\debug\PIC32AK_APP_CODE.X.debug.elf" "dist\default\debug\PIC32AK_APP_CODE.bin"
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32AK1216GC41064
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\APP_p32AK1216GC41064.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: pic32a_compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/28af3800e82dcc1e123a6a28c39ccaceca97cd04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/16c03ad1548ab8b6c594801c312c6121259289b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/8e6803711a77d36eee5e748b2442cd8136a09529 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/92285d4b8b05d94a8d22249ca896b684dac766cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/d7dfe4fa304b79c7fcbf9c6bfa2769aed8db016b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/735bf8278184c334bf45c0eae4b70719b3cacb69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/b348a98837ff5cf3c142f6875c6f59ee2fd0b664 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/637126a8f749bb285c1944eaa7a094f72499e49e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/5690c1b68241b0660c3539552e44a378d9247f48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/d70710ef827d3dffe24e24ecf4bbf0055056efcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/14089aab6ddf6f31b05e02d8be8af5f30e88c2af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/9c0fc0d32615b72dfdb929f064383e7486af5556 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/52401dba5e3d0ef5026519eb2c9751dc71d8059e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_uart.o: ../src/driver/driver_uart.c  .generated_files/flags/default/e858a8c99c95560a88ec42320ceea1857b928e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_uart.c  -o ${OBJECTDIR}/_ext/362756510/driver_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_uart.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_can.o: ../src/driver/driver_can.c  .generated_files/flags/default/4c8d5c4862531fd0aaa687134bdee5a3fead9bfa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_can.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_can.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_can.c  -o ${OBJECTDIR}/_ext/362756510/driver_can.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_can.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/diagnostics.o: ../src/middleware/diagnostics.c  .generated_files/flags/default/536097526d43d76e4ffe153458fe6a767852f1de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/diagnostics.c  -o ${OBJECTDIR}/_ext/1375476428/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/diagnostics.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/metadata.o: ../src/middleware/metadata.c  .generated_files/flags/default/229bc83751877f116e237ed986e75ebb338a4d31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/metadata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/metadata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/metadata.c  -o ${OBJECTDIR}/_ext/1375476428/metadata.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/metadata.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot.o: ../src/middleware/boot.c  .generated_files/flags/default/f75d3edd1d47d7cae856598261fbb3102dba8ae7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot.c  -o ${OBJECTDIR}/_ext/1375476428/boot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/c9da26097910b0409b91baea7908177a38890308 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/mcu_config.o: ../src/software/mcu_config.c  .generated_files/flags/default/cb2f61aeceb54d02199ab79c3df2cc24502e8065 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/mcu_config.c  -o ${OBJECTDIR}/_ext/1200941409/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/mcu_config.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/c7c3265e1117385a5d7fd467495c156fe4177bf6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/tuner.o: ../src/middleware/tuner.c  .generated_files/flags/default/aeb84e90b36bddddf7860782390fcf2407388ad2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/tuner.c  -o ${OBJECTDIR}/_ext/1375476428/tuner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/tuner.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/95f04a750cac267016810ac0d2dc9604b25034bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/53e182250b3d298df75f111927d5c267e23e7f6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/170b5fa581d864de97a96dac24efa7b22bc44fec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/a85873f8782730dcd26b06d8801e6c91ede9de61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/33f313a23b3a27e8ff9c5240f65fd06dcc5ab29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/f9b24c3b9623e0aed40f5ce567d28b68dadcd6dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/a69b9804d1eefa12a9b4dec73243992a5ef10532 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/92915acc14dd28b310f925e33b355bb48be1e92c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/9250adb4e7eef8029757ad6e30c975eaeebb141f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/bdb3968c2972756ef23b5cdce33435056d1a3424 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/8213135bd9b4deb54e5b5b19e0ad2f4b080a77cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/9325299ed0863f6a0d273abfe260e74b7ef7014a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/1f59abafa08bcc1ca39d6e0c211840def3905201 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_uart.o: ../src/driver/driver_uart.c  .generated_files/flags/default/4e62d04e9e3351d01d1c0c5361d535a97bbf2431 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_uart.c  -o ${OBJECTDIR}/_ext/362756510/driver_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_uart.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_can.o: ../src/driver/driver_can.c  .generated_files/flags/default/6fc95a9e8f06965d1cadccd9d798c0daf0a1b2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_can.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_can.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_can.c  -o ${OBJECTDIR}/_ext/362756510/driver_can.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_can.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/diagnostics.o: ../src/middleware/diagnostics.c  .generated_files/flags/default/7d00d46453987427f51d3a6518adc01a9ded25de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/diagnostics.c  -o ${OBJECTDIR}/_ext/1375476428/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/diagnostics.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/metadata.o: ../src/middleware/metadata.c  .generated_files/flags/default/213aa8ea15e204c3f9a8d53efa2c473c78d177e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/metadata.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/metadata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/metadata.c  -o ${OBJECTDIR}/_ext/1375476428/metadata.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/metadata.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot.o: ../src/middleware/boot.c  .generated_files/flags/default/1db81035d03cdbeab7ef8a1279fe67f29d4ef77b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot.c  -o ${OBJECTDIR}/_ext/1375476428/boot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/1182d889f6d6636a5502d2f47ba0e71791a29395 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/mcu_config.o: ../src/software/mcu_config.c  .generated_files/flags/default/cd541492bd405a04cb7169f756fa4f7769c819b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/mcu_config.c  -o ${OBJECTDIR}/_ext/1200941409/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/mcu_config.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/cccb257c8b1d0417ce19e833f821e08b529e750d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/tuner.o: ../src/middleware/tuner.c  .generated_files/flags/default/55564e17652cd31c88baa6dd900c3a014cd86fe4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuner.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuner.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/tuner.c  -o ${OBJECTDIR}/_ext/1375476428/tuner.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/tuner.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
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
${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/APP_p32AK1216GC41064.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	
else
${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/APP_p32AK1216GC41064.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a   -mdfp="${DFP_DIR}/xc32" 
	
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
