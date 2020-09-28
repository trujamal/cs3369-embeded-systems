#ifndef EVENT_H
#define	EVENT_H

typedef enum {
    Pressed,
    Released,
} Event_Button;

typedef enum {
    Delaying,
    Expired,
} Event_Delay;

extern volatile Event_Button evbutton;
extern volatile Event_Delay evdelay;

#endif	/* EVENT_H */

