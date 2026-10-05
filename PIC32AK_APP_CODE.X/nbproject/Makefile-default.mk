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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/driver_CANbus.c ../src/driver/driver_UART.c ../src/driver/driver_mcp2515.c ../src/driver/flash_eeprom.c ../src/middleware/boot_handler.c ../src/middleware/diagnostics.c ../src/middleware/tuning.c ../src/middleware/device_startup.c ../src/software/state_engine.c ../src/software/mcu_config.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o ${OBJECTDIR}/_ext/362756510/driver_UART.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/1375476428/boot_handler.o ${OBJECTDIR}/_ext/1375476428/diagnostics.o ${OBJECTDIR}/_ext/1375476428/tuning.o ${OBJECTDIR}/_ext/1375476428/device_startup.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1200941409/mcu_config.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/traps.o.d ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d ${OBJECTDIR}/_ext/362756510/driver_UART.o.d ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d ${OBJECTDIR}/_ext/1375476428/tuning.o.d ${OBJECTDIR}/_ext/1375476428/device_startup.o.d ${OBJECTDIR}/_ext/1200941409/state_engine.o.d ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1865312166/plib_intc.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/traps.o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o ${OBJECTDIR}/_ext/362756510/driver_UART.o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o ${OBJECTDIR}/_ext/1375476428/boot_handler.o ${OBJECTDIR}/_ext/1375476428/diagnostics.o ${OBJECTDIR}/_ext/1375476428/tuning.o ${OBJECTDIR}/_ext/1375476428/device_startup.o ${OBJECTDIR}/_ext/1200941409/state_engine.o ${OBJECTDIR}/_ext/1200941409/mcu_config.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/intc/plib_intc.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c ../src/config/default/peripheral/tmr/plib_tmr1.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/traps.c ../src/driver/driver_CANbus.c ../src/driver/driver_UART.c ../src/driver/driver_mcp2515.c ../src/driver/flash_eeprom.c ../src/middleware/boot_handler.c ../src/middleware/diagnostics.c ../src/middleware/tuning.c ../src/middleware/device_startup.c ../src/software/state_engine.c ../src/software/mcu_config.c ../src/main.c



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
ProjectDir="D:\APT-PROJECTS\PIC32AK_BOOTLOADER\PIC32AK_APP_CODE\PIC32AK_APP_CODE.X"
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
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/8b9131dd79e254296d3659da84fac5660a4fa81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/344406106f0cccae827f6e10020e9bd63df34ad7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/f7f93aab62455049f9dfe063b1f3b5ed645d88da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/a195096673c12afe652ee16ef855bdc1ddd92665 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/b6ec531695b7af3e35dd6c8feca3ffc5950b351b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/ab7f5a59c705c4d197a78c8322aa6ef298a9e1d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/3186bb240a22bab318f335008122c95a92aa1f59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/3d30556b7805cfd7153cde2ecb5f3f251c71a45d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/6939a59e7b046b5105e6c668a6e57fe8fb916e51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/fe95e289f400d42fad352cb314a232a9b179067d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/18f51374361d1189dba254764a72689d483231e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_CANbus.o: ../src/driver/driver_CANbus.c  .generated_files/flags/default/227fe3dc35f64a4bc5f36c88239728edfa6065d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_CANbus.c  -o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_UART.o: ../src/driver/driver_UART.c  .generated_files/flags/default/478047badb2761e3b414a5a9147496e2f15514a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_UART.c  -o ${OBJECTDIR}/_ext/362756510/driver_UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_UART.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/cd4f0ee3451cc465348862fa0a7af84bd00a74a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/b00186102a57685d176df00f10857eefd2bebb5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot_handler.o: ../src/middleware/boot_handler.c  .generated_files/flags/default/1c25474410f88bebd75cb68d54799926662c7751 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot_handler.c  -o ${OBJECTDIR}/_ext/1375476428/boot_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot_handler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/diagnostics.o: ../src/middleware/diagnostics.c  .generated_files/flags/default/8807b2195ab2f709a626ac4862e5dd8e06fc2fff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/diagnostics.c  -o ${OBJECTDIR}/_ext/1375476428/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/diagnostics.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/tuning.o: ../src/middleware/tuning.c  .generated_files/flags/default/915f79c796f2a23c2d6730fcde8339d10212cef2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/tuning.c  -o ${OBJECTDIR}/_ext/1375476428/tuning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/tuning.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/device_startup.o: ../src/middleware/device_startup.c  .generated_files/flags/default/99445b0c59709e3168a6e173be8a47f035b4e64b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/device_startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/device_startup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/device_startup.c  -o ${OBJECTDIR}/_ext/1375476428/device_startup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/device_startup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/8c10e6beacc54fa4cfa4b0ec4bb602f2a66787eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/mcu_config.o: ../src/software/mcu_config.c  .generated_files/flags/default/315e82b053368136a6db09a88c976df3ceec018b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/mcu_config.c  -o ${OBJECTDIR}/_ext/1200941409/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/mcu_config.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/a83ed5c0b7363b00fd0febd0c66bf9ecf4dc44ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/main.c  -o ${OBJECTDIR}/_ext/1360937237/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/6455d0ca0499668d6b75ae75b6c5118a2f2431e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/clk/plib_clk.c  -o ${OBJECTDIR}/_ext/60165520/plib_clk.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/flags/default/cd7d42e8f231b054db95c0fa9e68d98a21417d46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/gpio/plib_gpio.c  -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865312166/plib_intc.o: ../src/config/default/peripheral/intc/plib_intc.c  .generated_files/flags/default/4b46f5794b687d28a6fc1f8b7e8e0b3198a650e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865312166" 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865312166/plib_intc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/intc/plib_intc.c  -o ${OBJECTDIR}/_ext/1865312166/plib_intc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865312166/plib_intc.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/flags/default/f9795a88b4066608edd26e3b9aeb2d71354dfdc6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/nvm/plib_nvm.c  -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o: ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  .generated_files/flags/default/c41eda422179efe15b6fd3caaecbb165cc06aaeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1868329136" 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d 
	@${RM} ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c  -o ${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1868329136/plib_spi1_host.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/60181895/plib_tmr1.o: ../src/config/default/peripheral/tmr/plib_tmr1.c  .generated_files/flags/default/26add2ed2c3e77e8f4cd3a14ff8799049d8fb828 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/tmr/plib_tmr1.c  -o ${OBJECTDIR}/_ext/60181895/plib_tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/flags/default/8722f935852fcd6f568af752635fcd344d59f782 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/peripheral/uart/plib_uart1.c  -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/e7f5f3d4154e0a381874173ba9dff5ba716842e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/stdio/xc32_monitor.c  -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/4c8070a4d1a1c8ffab1d189381704c72a8eb03f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/initialization.c  -o ${OBJECTDIR}/_ext/1171490990/initialization.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/efee294037c56f87ca83398646b47f225cbe76d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/interrupts.c  -o ${OBJECTDIR}/_ext/1171490990/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1171490990/traps.o: ../src/config/default/traps.c  .generated_files/flags/default/df6f47383bb00daeff708c3d5cdee42f93d84111 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/config/default/traps.c  -o ${OBJECTDIR}/_ext/1171490990/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/traps.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_CANbus.o: ../src/driver/driver_CANbus.c  .generated_files/flags/default/99cef1aa87661d8ce3d832092ef0c6d7021e2775 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_CANbus.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_CANbus.c  -o ${OBJECTDIR}/_ext/362756510/driver_CANbus.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_CANbus.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_UART.o: ../src/driver/driver_UART.c  .generated_files/flags/default/edf33e448793747ef16fdba1b2d2cd728caddc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_UART.c  -o ${OBJECTDIR}/_ext/362756510/driver_UART.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_UART.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/driver_mcp2515.o: ../src/driver/driver_mcp2515.c  .generated_files/flags/default/bf7fcb42f5f92dcda435331b8c59c9d7f2f12ec7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/driver_mcp2515.c  -o ${OBJECTDIR}/_ext/362756510/driver_mcp2515.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/driver_mcp2515.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/362756510/flash_eeprom.o: ../src/driver/flash_eeprom.c  .generated_files/flags/default/8c84f532b3a62fdec96a1c1fc27c1edd6720800b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/362756510" 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/362756510/flash_eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/driver/flash_eeprom.c  -o ${OBJECTDIR}/_ext/362756510/flash_eeprom.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/362756510/flash_eeprom.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/boot_handler.o: ../src/middleware/boot_handler.c  .generated_files/flags/default/ddadacce9b7bb4189f4adf08f962d2a266033d47 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/boot_handler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/boot_handler.c  -o ${OBJECTDIR}/_ext/1375476428/boot_handler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/boot_handler.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/diagnostics.o: ../src/middleware/diagnostics.c  .generated_files/flags/default/bda85649b7ef0dea4b2e56bf58f119cb93350d7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/diagnostics.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/diagnostics.c  -o ${OBJECTDIR}/_ext/1375476428/diagnostics.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/diagnostics.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/tuning.o: ../src/middleware/tuning.c  .generated_files/flags/default/2ce0998f0f9e50a2ff57265d44b4356fa4098ef1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuning.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/tuning.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/tuning.c  -o ${OBJECTDIR}/_ext/1375476428/tuning.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/tuning.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1375476428/device_startup.o: ../src/middleware/device_startup.c  .generated_files/flags/default/17acc56c0388ccbcefe3e6f12e1163c2fa7838ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1375476428" 
	@${RM} ${OBJECTDIR}/_ext/1375476428/device_startup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1375476428/device_startup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/middleware/device_startup.c  -o ${OBJECTDIR}/_ext/1375476428/device_startup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1375476428/device_startup.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/state_engine.o: ../src/software/state_engine.c  .generated_files/flags/default/d114aebb53891200f77867426f9a06c5c653510e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/state_engine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/state_engine.c  -o ${OBJECTDIR}/_ext/1200941409/state_engine.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/state_engine.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1200941409/mcu_config.o: ../src/software/mcu_config.c  .generated_files/flags/default/787cf0cb0583cabc3fd1cd9de3990a7e712a268e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200941409" 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200941409/mcu_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../src/software/mcu_config.c  -o ${OBJECTDIR}/_ext/1200941409/mcu_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1200941409/mcu_config.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -ffunction-sections -fdata-sections -O1 -I"../src" -I"../src/config/default" -msmart-io=1 -msfr-warn=off   -mdfp="${DFP_DIR}/xc32"
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7a751bce1872c072d38d240ceed2ca16163302f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/APP_p32AK1216GC41064.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PICKITBASIC=1  -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PICKITBASIC=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	
else
${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/APP_p32AK1216GC41064.gld ../../PIC32AK_SPI_CAN_BOOTLOADER/PIC32AK_SPI_CAN_BOOTLOADER.X/dist/default/production/PIC32AK_SPI_CAN_BOOTLOADER.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,--ivt=0x808040$(MP_EXTRA_LD_POST) -mdfp="${DFP_DIR}/xc32" 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a   -mdfp="${DFP_DIR}/xc32" 
	
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.30/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.30/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/PIC32AK_APP_CODE.X.${IMAGE_TYPE}.hex ../../PIC32AK_SPI_CAN_BOOTLOADER/PIC32AK_SPI_CAN_BOOTLOADER.X/dist/default/production/PIC32AK_SPI_CAN_BOOTLOADER.X.production.hex -odist/${CND_CONF}/production/PIC32AK_APP_CODE.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../PIC32AK_SPI_CAN_BOOTLOADER/PIC32AK_SPI_CAN_BOOTLOADER.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
else
	cd ../../PIC32AK_SPI_CAN_BOOTLOADER/PIC32AK_SPI_CAN_BOOTLOADER.X && ${MAKE}  -f Makefile CONF=default
endif


# Subprojects
.clean-subprojects:
	cd ../../PIC32AK_SPI_CAN_BOOTLOADER/PIC32AK_SPI_CAN_BOOTLOADER.X && rm -rf "build/default" "dist/default"

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
