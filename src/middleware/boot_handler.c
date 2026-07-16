#include "definitions.h"
#include "boot_handler.h"
#include "../driver/driver_CANbus.h"
#include "../driver/device_stat.h"
#include "../driver/flash_eeprom.h"

typedef void (*BOOT_ENTRY_FUNC)(void);

void Send_PICID_1(void) {
    uint8_t txBuf[8];

    /* UDID0 */
    txBuf[0] = (uint8_t) (udid[0] >> 24);
    txBuf[1] = (uint8_t) (udid[0] >> 16);
    txBuf[2] = (uint8_t) (udid[0] >> 8);
    txBuf[3] = (uint8_t) (udid[0]);

    /* UDID1 */
    txBuf[4] = (uint8_t) (udid[1] >> 24);
    txBuf[5] = (uint8_t) (udid[1] >> 16);
    txBuf[6] = (uint8_t) (udid[1] >> 8);
    txBuf[7] = (uint8_t) (udid[1]);

    CANbus_write(CANID_RESP_PICID_1, txBuf, 8);
}

void Send_PICID_2(void) {
    uint8_t txBuf[8];

    /* UDID2 */
    txBuf[0] = (uint8_t) (udid[2] >> 24);
    txBuf[1] = (uint8_t) (udid[2] >> 16);
    txBuf[2] = (uint8_t) (udid[2] >> 8);
    txBuf[3] = (uint8_t) (udid[2]);

    /* UDID3 */
    txBuf[4] = (uint8_t) (udid[3] >> 24);
    txBuf[5] = (uint8_t) (udid[3] >> 16);
    txBuf[6] = (uint8_t) (udid[3] >> 8);
    txBuf[7] = (uint8_t) (udid[3]);

    CANbus_write(CANID_RESP_PICID_2, txBuf, 8);
}

void Send_Software_ID(void) {
    uint8_t TxBuf[8];
    uint32_t project_id;
    uint32_t firmware_id;

    /* Read IDs from parameter matrix */
    project_id = (uint32_t) R_PROJECT_ID;
    firmware_id = (uint32_t) R_FIRMWARE_ID;

    /* Extract Project ID */
    uint16_t oem_id = (uint16_t) ((project_id >> 16) & 0xFFFFU);
    uint16_t application_id = (uint16_t) (project_id & 0xFFFFU);

    /* Extract Firmware ID */
    uint16_t major = (uint16_t) ((firmware_id >> 16) & 0xFFFFU);
    uint16_t minor = (uint16_t) (firmware_id & 0xFFFFU);

    /* OEM ID */
    TxBuf[0] = (uint8_t) (oem_id >> 8);
    TxBuf[1] = (uint8_t) (oem_id);

    /* Application ID */
    TxBuf[2] = (uint8_t) (application_id >> 8);
    TxBuf[3] = (uint8_t) (application_id);

    /* Firmware Major */
    TxBuf[4] = (uint8_t) (major >> 8);
    TxBuf[5] = (uint8_t) (major);

    /* Firmware Minor */
    TxBuf[6] = (uint8_t) (minor >> 8);
    TxBuf[7] = (uint8_t) (minor);

    CANbus_write(CANID_RESP_SOFTWARE_ID, TxBuf, sizeof (TxBuf));
}

void Application_Status(void) {
    uint8_t resp = (uint8_t) CMD_RESP_APPLICATION_MODE;

    CANbus_write(CANID_MCU_RESP, &resp, sizeof (resp));
}

void Jump_To_Bootloader(void) {
    uint32_t bootEntryAddress;
    BOOT_ENTRY_FUNC bootEntry;

    /* Read Bootloader Reset Vector */
    bootEntryAddress =
            *(volatile const uint32_t *) BOOTLOADER_START_ADDRESS;

    /* Validate Bootloader */
    if ((bootEntryAddress == 0xFFFFFFFFUL) ||
            (bootEntryAddress == 0x00000000UL)) {
        return;
    }

    if ((bootEntryAddress < BOOTLOADER_START_ADDRESS) ||
            (bootEntryAddress > BOOTLOADER_END_ADDRESS)) {
        return;
    }

    /* Disable Global Interrupts */
    (void) __builtin_disable_interrupts();

    /* Disable all Interrupt Sources */
    IEC0 = 0;
    IEC1 = 0;
    IEC2 = 0;
    IEC3 = 0;
    IEC4 = 0;
    IEC5 = 0;
    IEC6 = 0;

    /* Clear Pending Interrupts */
    IFS0 = 0;
    IFS1 = 0;
    IFS2 = 0;
    IFS3 = 0;
    IFS4 = 0;
    IFS5 = 0;
    IFS6 = 0;

    /*
     * Stop peripherals if required.
     *
     * Example:
     *
     * */
//    TMR1_Stop();
    SPI1_Deinitialize();

    /*
     * Bootloader IVT
     */
    __builtin_setIVTBASE((void *) 0x807040);

    bootEntry = (BOOT_ENTRY_FUNC) bootEntryAddress;

    bootEntry();

    while (1) {
    }
}

void Set_Bootloader_Flag(void) {
    W_BOOT_FLAG = 1.0f;

    //--------------------------------------------------
    // Prepare EEPROM write buffer with the complete matrix.
    //--------------------------------------------------
    __builtin_memset(eepromBuffer, 0xFF, EEPROM_DATA_SIZE);
    __builtin_memcpy(eepromBuffer, writeMatrix, sizeof (writeMatrix));

    if (FLASH_EEPROM_Write_Page(eepromBuffer, sizeof (writeMatrix)) ==
            FLASH_EEPROM_OK) {
        asm("reset");
    }
}

void Run_Boot_Handler(uint32_t ID, uint8_t CMD) {
    switch (ID) {
        case CANID_REQ_PICID_1:
            Send_PICID_1();
            break;

        case CANID_REQ_PICID_2:
            Send_PICID_2();
            break;

        case CANID_REQ_SOFTWARE_ID:
            Send_Software_ID();
            break;

        case CANID_SCU_REQ:
            switch (CMD) {
                case CMD_REQ_BOOTLOADER:
                    Set_Bootloader_Flag();
                    break;

                case CMD_REQ_STATUS:
                    Application_Status();
                    break;

                default:
                    break;
            }
            break;
        default:
            break;
    }
}