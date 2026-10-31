#include "definitions.h"
#include "driver.h"
#include "middleware.h"

uint8_t eepromBuffer[EEPROM_DATA_SIZE];

void Load_EEPROM_Data(void){
    __builtin_memset(eepromBuffer, 0, sizeof (eepromBuffer));
    
    FLASH_EEPROM_Read_Page(eepromBuffer, sizeof (eepromBuffer));
}