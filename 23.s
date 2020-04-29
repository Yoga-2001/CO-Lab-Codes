/*
#define :equ

*/
.equ stcount, 250
.equ ltcount, 10
.equ halt, 0x11

L_TIMER:
MOV r2, #ltcount ;
LT_LOOP:
BL S_TIMER       ;
SUBS r2,r2,#1    ;
BNE LT_LOOP      ;

SWI halt         ;





S_TIMER:
MOV r1,#stcount ;
S_LOOP:
SUBS r1,r1,#1   ;
BNE S_LOOP      ;
MOV PC,LR       ;