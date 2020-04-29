.equ S_COUNT, 250   ;
.equ L_COUNT, 4000  ;
.equ R_LED,    2    ;
.equ L_LED,    1    ;
.equ LED_GLOW, 0X201;
.equ HALT,     0X11 ;

LED:
MOV R0, #L_LED;
SWI LED_GLOW  ;
MOV R5,PC     ;
B L_LOOP      ;
MOV R0, #R_LED;
SWI LED_GLOW  ;
MOV R5,PC     ;
B L_LOOP      ;
B LED         ;


L_LOOP:
MOV r2, #L_COUNT ;

LT_LOOP:
BL S_LOOP        ;
SUBS r2,r2,#1    ;
BNE LT_LOOP      ;

MOV PC,R5        ;





S_LOOP:
MOV r1,#S_COUNT ;

ST_LOOP:

SUBS r1,r1,#1   ;
BNE ST_LOOP      ;
MOV PC,LR       ;