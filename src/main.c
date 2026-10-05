#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "driver.h"
#include "middleware.h"

#define MCP2515_STARTUP_ATTEMPTS  5U

int main(void) {
    static uint8_t attempt;

    SYS_Initialize(NULL);

    GREEN_LED_Set();

    for (attempt = 0U; attempt < MCP2515_STARTUP_ATTEMPTS; attempt++) {
        if (MCP2515_Init() == true) {
            break;
        }
    }

    NVM_EEPROM_Initialize();

    TMR1_Start();

    while (true) {

    }

    return ( EXIT_FAILURE);
}


//808000-81efff
//800000-807fff, 81f000-81ffff
//"C:\Program Files\Microchip\xc32\v5.00\bin\xc32-objcopy.exe" -O binary -R .config_* -R .comment -R .debug* -R __c30_signature "dist\default\debug\PIC32AK_APP_CODE.X.debug.elf" "dist\default\debug\PIC32AK_APP_CODE.bin"
//--ivt=0x808040