include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(PIC32AK64_App_Code_default_library_list )

# Handle files with suffix s, for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemble)
add_library(PIC32AK64_App_Code_default_default_XC32_pic32a_assemble OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemble})
    PIC32AK64_App_Code_default_default_XC32_pic32a_assemble_rule(PIC32AK64_App_Code_default_default_XC32_pic32a_assemble)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_pic32a_assemble>")

endif()

# Handle files with suffix S, for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemblePreproc)
add_library(PIC32AK64_App_Code_default_default_XC32_pic32a_assemblePreproc OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_assemblePreproc})
    PIC32AK64_App_Code_default_default_XC32_pic32a_assemblePreproc_rule(PIC32AK64_App_Code_default_default_XC32_pic32a_assemblePreproc)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_pic32a_assemblePreproc>")

endif()

# Handle files with suffix c, for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile)
add_library(PIC32AK64_App_Code_default_default_XC32_pic32a_compile OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile})
    PIC32AK64_App_Code_default_default_XC32_pic32a_compile_rule(PIC32AK64_App_Code_default_default_XC32_pic32a_compile)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_pic32a_compile>")

endif()

# Handle files with suffix cpp, for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile_cpp)
add_library(PIC32AK64_App_Code_default_default_XC32_pic32a_compile_cpp OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_compile_cpp})
    PIC32AK64_App_Code_default_default_XC32_pic32a_compile_cpp_rule(PIC32AK64_App_Code_default_default_XC32_pic32a_compile_cpp)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_pic32a_compile_cpp>")

endif()

# Handle files with suffix [cC], for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_dependentObject)
add_library(PIC32AK64_App_Code_default_default_XC32_dependentObject OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_dependentObject})
    PIC32AK64_App_Code_default_default_XC32_dependentObject_rule(PIC32AK64_App_Code_default_default_XC32_dependentObject)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_dependentObject>")

endif()

# Handle files with suffix elf, for group default-XC32
if(PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_bin2hex)
add_library(PIC32AK64_App_Code_default_default_XC32_pic32a_bin2hex OBJECT ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_bin2hex})
    PIC32AK64_App_Code_default_default_XC32_pic32a_bin2hex_rule(PIC32AK64_App_Code_default_default_XC32_pic32a_bin2hex)
    list(APPEND PIC32AK64_App_Code_default_library_list "$<TARGET_OBJECTS:PIC32AK64_App_Code_default_default_XC32_pic32a_bin2hex>")

endif()


# Main target for this project
add_executable(PIC32AK64_App_Code_default_image_LlwWGMlp ${PIC32AK64_App_Code_default_library_list})

set_target_properties(PIC32AK64_App_Code_default_image_LlwWGMlp PROPERTIES
    OUTPUT_NAME "default"
    SUFFIX ".elf"
    RUNTIME_OUTPUT_DIRECTORY "${PIC32AK64_App_Code_default_output_dir}")
target_link_libraries(PIC32AK64_App_Code_default_image_LlwWGMlp PRIVATE ${PIC32AK64_App_Code_default_default_XC32_FILE_TYPE_pic32a_link})

# Add the link options from the rule file.
PIC32AK64_App_Code_default_pic32a_link_rule( PIC32AK64_App_Code_default_image_LlwWGMlp)

# Add bin2hex target for converting built file to a .hex file.
string(REGEX REPLACE [.]elf$ .hex PIC32AK64_App_Code_default_image_name_hex ${PIC32AK64_App_Code_default_image_name})
add_custom_target(PIC32AK64_App_Code_default_Bin2Hex ALL
    COMMAND ${MP_BIN2HEX} \"${PIC32AK64_App_Code_default_output_dir}/${PIC32AK64_App_Code_default_image_name}\"
    BYPRODUCTS ${PIC32AK64_App_Code_default_output_dir}/${PIC32AK64_App_Code_default_image_name_hex}
    COMMENT "Convert built file to .hex")
add_dependencies(PIC32AK64_App_Code_default_Bin2Hex PIC32AK64_App_Code_default_image_LlwWGMlp)



