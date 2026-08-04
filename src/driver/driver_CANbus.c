#include "device.h"
#include "definitions.h"
#include "driver_CANbus.h"
//#include "VCU_CANdata.h"
#include "diagnostics.h"
//#include "application_software.h"
#include "tuning.h"
#include "driver_mcp2515.h"
#include "../middleware/boot_handler.h"

void CANbus_write(uint32_t Sadr, uint8_t *Sdata, uint8_t Sdata_L) {
    bool sstat;
    bool idType;

    /* Standard CAN ID (11-bit) */
    if (Sadr <= 0x7FFU) {
        idType = false;
    }/* Extended CAN ID (29-bit) */
    else {
        idType = true;
    }

    sstat = MCP2515_SendMessage(Sadr, idType, Sdata_L, Sdata);

    (void) sstat; // Suppress unused variable warning
}

void CANbus_read(void) {
    uint8_t Rdata[8];
    bool rstat = 0;
    uint8_t msg_len = 0;
    uint32_t msg_id = 0;
    bool idType;

    rstat = MCP2515_ReceiveMessage(&msg_id, &idType, &msg_len, &Rdata[0]);

    if (rstat) {
        rstat = 0;

        // For OTA Bootloader Updates
        if (msg_id == BOOT_CAN_ID_HOST) {
            Run_Boot_Handler(msg_id, Rdata);
        }

        switch (msg_id) {
            case 0xA1:
                //                A1_action(Rdata, msg_len);
                break;

            case 0xA3:
                //                A3_action(Rdata, msg_len);
                break;

            case 0xA5:
                //                battery_ilimits(Rdata[0], Rdata[1]);
                break;

            case 0xC0:
                C0_send_TU_data_CAN();
                break;

            case 0x14234050:
                //                battery_ilimits(Rdata[2], Rdata[3]);
                break;

            case CAN_ID_TUNER_SOFTWARE:
            {
                uint8_t row = Rdata[2];
                uint8_t col = Rdata[3];

                switch (Rdata[0]) {
                    case CAN_CMD_TUNER_PIC_ID_1:
                        CAN_Tuner_Send_PIC_ID_1();
                        break;

                    case CAN_CMD_TUNER_PIC_ID_2:
                        CAN_Tuner_Send_PIC_ID_2();
                        break;

                    case CAN_CMD_TUNER_READ:
                        CAN_Tuner_Read(row, col);
                        break;

                    case CAN_CMD_TUNER_WRITE_MATRIX:
                        CAN_Tuner_Write_Matrix(row, col, Rdata);
                        break;

                    case CAN_CMD_TUNER_WRITE_FLASH:
                        CAN_Tuner_Write_Flash();
                        break;

                    default:
                        // Unknown tuner command
                        break;
                }
            }
                break;

            default:

                break;
        }
    }
    Nop();
}