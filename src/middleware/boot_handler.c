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

void Boot_Software_ID_Handler(void) {
    uint8_t txBuf[8];
    float softwareId;

    if (canRxBuffer[0] != BOOT_CAN_CMD_0_SOFTWARE_ID) {
        return;
    }

    switch (canRxBuffer[2]) {
            /*------------------------- READ --------------------------*/
        case BOOT_CAN_CMD_2_READ:

            txBuf[0] = BOOT_CAN_CMD_0_SOFTWARE_ID;
            txBuf[1] = canRxBuffer[1];
            txBuf[2] = BOOT_CAN_CMD_2_READ;
            txBuf[3] = 0x00;

            switch (canRxBuffer[1]) {
                case BOOT_CAN_CMD_1_PROJECT_ID:
                    softwareId = R_PROJECT_ID;
                    break;

                case BOOT_CAN_CMD_1_FIRMWARE_ID:
                    softwareId = R_FIRMWARE_ID;
                    break;

                default:
                    return;
            }

            __builtin_memcpy(&txBuf[4], &softwareId, sizeof (float));

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof (txBuf));
            break;

            /*------------------------- WRITE -------------------------*/
        case BOOT_CAN_CMD_2_WRITE:

            txBuf[0] = BOOT_CAN_CMD_0_SOFTWARE_ID;
            txBuf[1] = canRxBuffer[1];
            txBuf[2] = BOOT_CAN_CMD_2_WRITE;
            txBuf[3] = 0x00;

            switch (canRxBuffer[1]) {
                case BOOT_CAN_CMD_1_PROJECT_ID:
                    __builtin_memcpy(&W_PROJECT_ID, &canRxBuffer[4], sizeof (float));
                    break;

                case BOOT_CAN_CMD_1_FIRMWARE_ID:
                    __builtin_memcpy(&W_FIRMWARE_ID, &canRxBuffer[4], sizeof (float));
                    break;

                default:
                    return;
            }

            __builtin_memset(eepromBuffer, 0xFF, EEPROM_DATA_SIZE);
            __builtin_memcpy(eepromBuffer, writeMatrix, sizeof (writeMatrix));

            if (FLASH_EEPROM_Write_Page(eepromBuffer, sizeof (writeMatrix)) == FLASH_EEPROM_OK) {
                txBuf[3] = BOOT_CAN_CMD_3_SUCCESS;
            } else {
                txBuf[3] = BOOT_CAN_CMD_3_FAIL;
            }

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof (txBuf));
            break;

        default:
            break;
    }
}

void Boot_Status_Handler(void) {
    uint8_t txBuf[8] = {0};
    uint32_t addr;

    if (canRxBuffer[0] != BOOT_CAN_CMD_0_STATUS) {
        return;
    }

    switch (canRxBuffer[2]) {
            /*------------------------- READ --------------------------*/
        case BOOT_CAN_CMD_2_READ:

            /* Get the address of this function */
            addr = (uint32_t) & Boot_Status_Handler;

            txBuf[0] = BOOT_CAN_CMD_0_STATUS;
            txBuf[2] = BOOT_CAN_CMD_2_READ;

            if ((addr >= BOOTLOADER_START_ADDRESS) &&
                    (addr <= BOOTLOADER_END_ADDRESS)) {
                txBuf[1] = BOOT_CAN_CMD_1_STATUS_BOOT;
            } else if ((addr >= APPLICATION_START_ADDRESS) &&
                    (addr <= APPLICATION_END_ADDRESS)) {
                txBuf[1] = BOOT_CAN_CMD_1_STATUS_APP;
            } else {
                txBuf[1] = BOOT_CAN_CMD_1_STATUS_UNKNOWN;
            }

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof (txBuf));
            break;

        default:
            break;
    }
}

void Boot_App_Size_Handler(void)
{
    uint8_t txBuf[8] = {0};
    uint32_t firmwareSize;
    uint32_t maxAppSize;

    if (canRxBuffer[0] != BOOT_CAN_CMD_0_APP_SIZE)
    {
        return;
    }

    switch (canRxBuffer[2])
    {
        /*----------------------- COMPARE -------------------------*/
        case BOOT_CAN_CMD_2_COMPARE:

            /* Extract firmware size (bytes) from CAN bytes 4-7 */
            firmwareSize = ((uint32_t)canRxBuffer[4] << 24) |
                           ((uint32_t)canRxBuffer[5] << 16) |
                           ((uint32_t)canRxBuffer[6] << 8)  |
                           ((uint32_t)canRxBuffer[7]);

            /* Maximum allowed firmware size = Application partition - 4 KB */
            maxAppSize = (APPLICATION_END_ADDRESS - APPLICATION_START_ADDRESS + 1U) - (4U * 1024U);

            txBuf[0] = BOOT_CAN_CMD_0_APP_SIZE;
            txBuf[2] = BOOT_CAN_CMD_2_COMPARE;

            if (firmwareSize < maxAppSize)
            {
                txBuf[3] = BOOT_CAN_CMD_3_SUCCESS;
            }
            else
            {
                txBuf[3] = BOOT_CAN_CMD_3_FAIL;
            }

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof(txBuf));
            break;

        /*------------------------- READ --------------------------*/
        case BOOT_CAN_CMD_2_READ:

            firmwareSize = (uint32_t)R_APP_SIZE;

            txBuf[0] = BOOT_CAN_CMD_0_APP_SIZE;
            txBuf[2] = BOOT_CAN_CMD_2_READ;
            txBuf[3] = 0x00;

            txBuf[4] = (uint8_t)(firmwareSize >> 24);
            txBuf[5] = (uint8_t)(firmwareSize >> 16);
            txBuf[6] = (uint8_t)(firmwareSize >> 8);
            txBuf[7] = (uint8_t)(firmwareSize);

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof(txBuf));
            break;

        /*------------------------- WRITE -------------------------*/
        case BOOT_CAN_CMD_2_WRITE:

            W_APP_SIZE = ((uint32_t)canRxBuffer[4] << 24) |
                         ((uint32_t)canRxBuffer[5] << 16) |
                         ((uint32_t)canRxBuffer[6] << 8)  |
                         ((uint32_t)canRxBuffer[7]);

            __builtin_memset(eepromBuffer, 0xFF, EEPROM_DATA_SIZE);
            __builtin_memcpy(eepromBuffer, writeMatrix, sizeof(writeMatrix));

            txBuf[0] = BOOT_CAN_CMD_0_APP_SIZE;
            txBuf[2] = BOOT_CAN_CMD_2_WRITE;

            if (FLASH_EEPROM_Write_Page(eepromBuffer, sizeof(writeMatrix)) == FLASH_EEPROM_OK)
            {
                txBuf[3] = BOOT_CAN_CMD_3_SUCCESS;
            }
            else
            {
                txBuf[3] = BOOT_CAN_CMD_3_FAIL;
            }

            CANbus_write(BOOT_CAN_ID_CLIENT, txBuf, sizeof(txBuf));
            break;

        default:
            break;
    }
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
                    break;
                }
                
                case BOOT_CAN_CMD_0_SOFTWARE_ID:
                {
                    Boot_Software_ID_Handler();
                    break;
                }
                    
                case BOOT_CAN_CMD_0_STATUS:
                {
                    Boot_Status_Handler();
                    break;
                }
                
                case BOOT_CAN_CMD_0_APP_SIZE:
                {
                    Boot_App_Size_Handler();
                    break; 
                }

                default:
                    break;
            }
            break;
        }

        case CANID_SCU_REQ:
            switch (rxBuffer[0]) {
                case CMD_REQ_BOOTLOADER:
                    Boot_Jump();
                    break;

                default:
                    break;
            }
            break;
            
        default:
            break;
    }
}