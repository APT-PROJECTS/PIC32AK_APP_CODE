set(DEPENDENT_MP_BIN2HEXPIC32AK64_App_Code_default_LlwWGMlp "c:/Program Files/Microchip/xc32/v5.00/bin/xc32-bin2hex.exe")
set(DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_LlwWGMlp ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32AK64_App_Code/default.elf)
set(DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_LlwWGMlp ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32AK64_App_Code)
set(DEPENDENT_BYPRODUCTSPIC32AK64_App_Code_default_LlwWGMlp ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_LlwWGMlp}/${sourceFileNamePIC32AK64_App_Code_default_LlwWGMlp}.c)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_LlwWGMlp}/${sourceFileNamePIC32AK64_App_Code_default_LlwWGMlp}.c
    COMMAND ${DEPENDENT_MP_BIN2HEXPIC32AK64_App_Code_default_LlwWGMlp} --image ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_LlwWGMlp} --image-generated-c ${sourceFileNamePIC32AK64_App_Code_default_LlwWGMlp}.c --image-generated-h ${sourceFileNamePIC32AK64_App_Code_default_LlwWGMlp}.h --image-copy-mode ${modePIC32AK64_App_Code_default_LlwWGMlp} --image-offset ${addressPIC32AK64_App_Code_default_LlwWGMlp} 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_LlwWGMlp}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_LlwWGMlp})
add_custom_target(
    dependent_produced_source_artifactPIC32AK64_App_Code_default_LlwWGMlp 
    DEPENDS ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_LlwWGMlp}/${sourceFileNamePIC32AK64_App_Code_default_LlwWGMlp}.c
    )
