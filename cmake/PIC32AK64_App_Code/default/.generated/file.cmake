# The following variables contains the files used by the different stages of the build process.
set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemble)
set_source_files_properties(${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemble} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemble})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemblePreproc)
set_source_files_properties(${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemblePreproc} PROPERTIES LANGUAGE ASM)

# For assembly files, add "." to the include path for each file so that .include with a relative path works
foreach(source_file ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemblePreproc})
        set_source_files_properties(${source_file} PROPERTIES INCLUDE_DIRECTORIES "$<PATH:NORMAL_PATH,$<PATH:REMOVE_FILENAME,${source_file}>>")
endforeach()

set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/initialization.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/interrupts.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/clk/plib_clk.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/gpio/plib_gpio.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/intc/plib_intc.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/nvm/plib_nvm.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/spi/spi_host/plib_spi1_host.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/tmr/plib_tmr1.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/peripheral/uart/plib_uart1.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/stdio/xc32_monitor.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default/traps.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/device_stat.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/diagnostics.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/driver_CANbus.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/driver_UART.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/driver_mcp2515.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/fault.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/flash_eeprom.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/mcu_config.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/driver/tuning.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/middleware/boot_handler.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/software/state_engine.c")
set_source_files_properties(${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile} PROPERTIES LANGUAGE C)
set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile_cpp)
set_source_files_properties(${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile_cpp} PROPERTIES LANGUAGE CXX)
set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_link)
set(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_bin2hex)
set(PIC32AK64_App_Code_default_image_name "default.elf")
set(PIC32AK64_App_Code_default_image_base_name "default")

# The output directory of the final image.
set(PIC32AK64_App_Code_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/PIC32AK64_App_Code")

# The full path to the final image.
set(PIC32AK64_App_Code_default_full_path_to_image ${PIC32AK64_App_Code_default_output_dir}/${PIC32AK64_App_Code_default_image_name})
