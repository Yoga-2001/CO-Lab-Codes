Filename: .asciz "26.txt"
Filehandle: .word 0
string1: .skip 50
string2: .skip 50
Diff: .asciz "The Strings are not SAME."
Same: .asciz "The Strings are SAME."

ldr r0,=Filename
mov r1,#0
swi 0x66
ldr r1,=Filehandle
str r0,[r1]
ldr r1,=string1
mov r2,#50
swi 0x6a
ldr r1,=string2
mov r2,#50
swi 0x6a

ldr r3,=string1
ldr r4,=string2

Loop:
ldrb r5,[r3],#1
ldrb r6,[r4],#1
cmp r5,#0;
beq Sloop;
cmp r5,r6;
bne Dloop;
bal Loop;

Sloop:
cmp r6,#0;
bne Dloop;
ldr r0,=Same
swi 0x02
b END

Dloop:
ldr r0,=Diff
swi 0x02
b END

END:
ldr r1,=Filehandle
ldr r0,[r1]
swi 0x68
swi 0x11