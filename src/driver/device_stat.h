#ifndef _DEVICE_STAT_H    /* Guard against multiple inclusion */
#define _DEVICE_STAT_H


#ifdef __cplusplus
extern "C" {
#endif
    
//--------------------------------------------------
// MAC ID PIC32AK
//--------------------------------------------------
#define UDID0_ADDR  ((volatile uint32_t *)0x7F2BE0)
#define UDID1_ADDR  ((volatile uint32_t *)0x7F2BE4)
#define UDID2_ADDR  ((volatile uint32_t *)0x7F2BE8)
#define UDID3_ADDR  ((volatile uint32_t *)0x7F2BEC)
    
extern uint32_t udid[4];
    
void Get_MAC_ID(void);
void Load_Read_Matrix(void);
void Get_Config(void);
void Update_Config(void);

#ifdef __cplusplus
}
#endif

#endif /* _DEVICE_STAT_H */

