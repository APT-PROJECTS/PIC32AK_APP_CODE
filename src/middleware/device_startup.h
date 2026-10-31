#ifndef _DEVICE_STARTUP_H    
#define _DEVICE_STARTUP_H


#ifdef __cplusplus
extern "C" {
#endif

#include "definitions.h"
#include "driver.h"
    
//--------------------------------------------------
// EXTERN VARIABLES
//--------------------------------------------------
extern uint8_t eepromBuffer[EEPROM_DATA_SIZE];


//--------------------------------------------------
// API
//--------------------------------------------------
void Load_EEPROM_Data(void);


#ifdef __cplusplus
}
#endif

#endif /* _DEVICE_STARTUP_H */