#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "driver/driver_mcp2515.h"
#include "driver/device_stat.h"

#define MCP2515_STARTUP_ATTEMPTS  5U

int main ( void )
{
    static uint8_t attempt;
    
    SYS_Initialize ( NULL );
    
    EEPROM_Initialize();
    
    for(attempt = 0U; attempt < MCP2515_STARTUP_ATTEMPTS; attempt++)
    {
        if(MCP2515_Init() == true)
        {
//            RED_LED_Set();
            break;
        }
    }
    
    TMR1_Start();
    
    while ( true )
    {
        GREEN_LED_Set();
    }

    return ( EXIT_FAILURE );
}


// 808000-80efff

// xc32-objcopy -O binary -R .config_* -R .comment -R .debug* -R __c30_signature "dist\default\debug\PIC32AK64_App_Code.X.debug.elf" "dist\default\debug\hub_scu_12.bin"
// ${MP_CC_DIR}/xc32-objcopy -I ihex -O binary dist\default\production\PIC32AK64_App_Code.X.production.hex dist\default\production\hub_scu_12.bin

//  reset          : ORIGIN = 0x808000,      LENGTH = 0x4
//  program (xr)   : ORIGIN = 0x808004,      LENGTH = 0x6FFC

// 33 RC8 MCC_CS
// 34 RC9 MCC_SCK
// 35 RC6 MCC_SDI
// 36 RC7 MCC_SDO
// 37 RC0 UART1_TX
// 38 RC1 UART1_RX
// 56 RD6 GREEN_LED
// 57 RD7 RED_LED


//reset          : ORIGIN = 0x800000,      LENGTH = 0x4
//program (xr)   : ORIGIN = 0x800004,      LENGTH = 0xFFFC