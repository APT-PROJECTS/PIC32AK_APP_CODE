set(DEPENDENT_MP_BIN2HEXPIC32AK64_App_Code_default_bZvpRPt6 "c:/Program Files/Microchip/xc32/v5.00/bin/xc32-bin2hex.exe")
set(DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_bZvpRPt6 ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32AK64_App_Code/default.elf)
set(DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_bZvpRPt6 ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PIC32AK64_App_Code)
set(DEPENDENT_BYPRODUCTSPIC32AK64_App_Code_default_bZvpRPt6 ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_bZvpRPt6}/${sourceFileNamePIC32AK64_App_Code_default_bZvpRPt6}.c)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_bZvpRPt6}/${sourceFileNamePIC32AK64_App_Code_default_bZvpRPt6}.c
    COMMAND ${DEPENDENT_MP_BIN2HEXPIC32AK64_App_Code_default_bZvpRPt6} --image ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_bZvpRPt6} --image-generated-c ${sourceFileNamePIC32AK64_App_Code_default_bZvpRPt6}.c --image-generated-h ${sourceFileNamePIC32AK64_App_Code_default_bZvpRPt6}.h --image-copy-mode ${modePIC32AK64_App_Code_default_bZvpRPt6} --image-offset ${addressPIC32AK64_App_Code_default_bZvpRPt6} 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_bZvpRPt6}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFPIC32AK64_App_Code_default_bZvpRPt6})
add_custom_target(
    dependent_produced_source_artifactPIC32AK64_App_Code_default_bZvpRPt6 
    DEPENDS ${DEPENDENT_TARGET_DIRPIC32AK64_App_Code_default_bZvpRPt6}/${sourceFileNamePIC32AK64_App_Code_default_bZvpRPt6}.c
    )
