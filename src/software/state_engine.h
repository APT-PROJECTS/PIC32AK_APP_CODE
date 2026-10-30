#ifndef STATE_ENGINE_H
#define STATE_ENGINE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "definitions.h"

//--------------------------------------------------
// STATE ENUM
//--------------------------------------------------
typedef enum
{
    STATE_INIT = 0,
    STATE_RUN
} STATE_ENGINE_STATES;

//--------------------------------------------------
// MAIN STATE ENGINE
//--------------------------------------------------
void State_Engine_Tasks(void);

#ifdef __cplusplus
}
#endif
 
#endif // STATE_ENGINE_H