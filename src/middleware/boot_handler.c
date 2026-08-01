#include "definitions.h"
#include "boot_handler.h"
#include "../driver/driver_CANbus.h"
#include "../driver/device_stat.h"

static uint8_t canRxBuffer[8] = {0U};

void Boot_PIC_ID_Handler(void) {
    uint8_t txBuf[8];
    uint32_t udidValue;

    if (canRxBuffer[0] != BOOT_CAN_CMD_0_PIC_ID) {
        return;
    }

    switch (canRxBuffer[2]) {
            /*------------------------- READ --------------------------*/
        case BOOT_CAN_CMD_2_READ:

            txBuf[0] = BOOT_CAN_CMD_0_PIC_ID;
            txBuf[1] = canRxBuffer[1];
            txBuf[2] = BOOT_CAN_CMD_2_READ;
            txBuf[3] = 0x00;

            switch (canRxBuffer[1]) {
                case BOOT_CAN_CMD_1_PIC_ID_1:
                    udidValue = udid[0];
                    break;

                case BOOT_CAN_CMD_1_PIC_ID_2:
                    udidValue = udid[1];
                    break;

                case BOOT_CAN_CMD_1_PIC_ID_3:
                    udidValue = udid[2];
                    break;

                case BOOT_CAN_CMD_1_PIC_ID_4:
                    udidValue = udid[3];
                    break;

                default:
                    return;
            }

            txBuf[4] = (uint8_t) (udidValue >> 24);
            txBuf[5] = (uint8_t) (udidValue >> 16);
            txBuf[6] = (uint8_t) (udidValue >> 8);
            txBuf[7] = (uint8_t) (udidValue);

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof (txBuf));
            break;

        default:
            break;
    }
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

void App_Status(void) {
    uint8_t resp = (uint8_t) CMD_RESP_APPLICATION_MODE;

    CANbus_write(CANID_MCU_RESP, &resp, sizeof (resp));
}

void Boot_Jump(void) {
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

void Run_Boot_Handler(uint32_t ID, uint8_t *rxBuffer) {

    __builtin_memcpy(canRxBuffer, rxBuffer, sizeof (canRxBuffer));

    switch (ID) {
        case BOOT_CAN_ID_HOST:
        {
            switch (rxBuffer[0]) {
                case BOOT_CAN_CMD_0_PIC_ID:
                {
                    Boot_PIC_ID_Handler();
                }
                    break;

                default:
                    break;
            }
        }
            break;

        case CANID_REQ_SOFTWARE_ID:
            Send_Software_ID();
            break;

        case CANID_SCU_REQ:
            switch (rxBuffer[0]) {
                case CMD_REQ_BOOTLOADER:
                    Boot_Jump();
                    break;

                case CMD_REQ_STATUS:
                    App_Status();
                    break;

                default:
                    break;
            }
            break;
        default:
            break;
    }
}