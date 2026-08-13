# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/HP/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(PIC32AK64_App_Code_default_default_XC32_pic32a_assemble_rule target)
    set(options
        "-g"
        "-mcpu=32AK6416GC41064"
        "-Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-g,--gdwarf-2,-IPIC32AK64_App_Code.X,--no-relax"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "PIC32AK64_App_Code.X")
endfunction()
function(PIC32AK64_App_Code_default_default_XC32_pic32a_assemblePreproc_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "-mcpu=32AK6416GC41064"
        "-Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-g,-IPIC32AK64_App_Code.X,--no-relax"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "PIC32AK64_App_Code.X")
endfunction()
function(PIC32AK64_App_Code_default_default_XC32_pic32a_compile_rule target)
    set(options
        "-g"
        "-mcpu=32AK6416GC41064"
        "-ffunction-sections"
        "-fdata-sections"
        "-O1"
        "-msmart-io=1"
        "-msfr-warn=off"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default"
        PRIVATE "PIC32AK64_App_Code.X")
endfunction()
function(PIC32AK64_App_Code_default_default_XC32_pic32a_compile_cpp_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-fframe-base-loclist"
        "-mcpu=32AK6416GC41064"
        "-frtti"
        "-fexceptions"
        "-fno-check-new"
        "-fenforce-eh-specs"
        "-ffunction-sections"
        "-O1"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "PIC32AK64_App_Code.X")
endfunction()
function(PIC32AK64_App_Code_default_dependentObject_rule target)
    set(options
        "-mprocessor=32AK6416GC41064"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
endfunction()
function(PIC32AK64_App_Code_default_pic32a_link_rule target)
    set(options
        "-g"
        "-mcpu=32AK6416GC41064"
        "-Wl,--script=p32AK6416GC41064.gld,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--heap=0,--data-init,--gc-sections,--isr,--stackguard=16,--library-path=PIC32AK64_App_Code.X,--no-force-link,--smart-io,-Map=mem.map,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=__DEBUG"
        PRIVATE "XPRJ_default=default")
endfunction()
function(PIC32AK64_App_Code_default_pic32a_bin2hex_rule target)
    add_custom_target(
        PIC32AK64_App_Code_default_Bin2Hex ALL
        COMMAND ${MP_BIN2HEX} ${PIC32AK64_App_Code_default_image_name} -a -mdfp=${PACK_REPO_PATH}/Microchip/PIC32AK-GC_DFP/1.1.53/xc32
        WORKING_DIRECTORY ${PIC32AK64_App_Code_default_output_dir}
        BYPRODUCTS "${PIC32AK64_App_Code_default_output_dir}/${PIC32AK64_App_Code_default_image_base_name}.hex"
        COMMENT "Convert build file to .hex")
    add_dependencies(PIC32AK64_App_Code_default_Bin2Hex ${target})
endfunction()
