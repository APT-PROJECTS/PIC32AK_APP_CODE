#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#include "driver/driver_mcp2515.h"
#include "driver/device_stat.h"
#include "middleware/boot_handler.h"

#define MCP2515_STARTUP_ATTEMPTS  5U

int main ( void )
{
    static uint8_t attempt;
//    static int ctr = 0;
    
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
//        if(ctr <= 2000000){
//            ctr++;
            GREEN_LED_Set();
//        }
//        else{
//            GREEN_LED_Clear();
//            ctr = 0;
//            Jump_To_Bootloader();
//        }
    }
    
    return ( EXIT_FAILURE );
}


// 80c000-80ffff

// xc32-objcopy -O binary -R .config_* -R .comment -R .debug* -R __c30_signature "dist\default\debug\PIC32AK64_App_Code.X.debug.elf" "dist\default\debug\application_0x804000.bin"

//  reset          : ORIGIN = 0x800000,      LENGTH = 0x4
//  program (xr)   : ORIGIN = 0x800004,      LENGTH = 0xBFFC

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