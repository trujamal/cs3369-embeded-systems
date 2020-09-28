#ifndef TABLE_H
#define	TABLE_H

#include "state.h"

typedef void (*StateAction)();
typedef void (*EventAction)();

struct _StateTableRow;

typedef struct {
    struct _StateTableRow* nextState;
    EventAction eventAction;
} EventEntry;

typedef struct _StateTableRow {
    State state;
    EventEntry pressed;
    EventEntry released;
    EventEntry delaying;
    EventEntry expired;
} StateTableRow;

extern StateTableRow S0, S1, S2, S3;

StateTableRow* initStateTable();

#endif	/* TABLE_H */

