Filename: .asciz "file3.txt"
Infilehandle: .word 0; # 32 bit creation with 0 initialisation
string: .skip 10;

ldr r0,=Filename;
mov r1,#0;
swi 0x66;
ldr r1,=Infilehandle;
str r0,[r1];
ldr r1,=string;
mov r2,#10; # fdkjgjkdfhkjn
swi 0x6a;

Loop:
ldrb r2,[r1],#1;
cmp r2,#0;
beq END;
cmp r2,#0x2c;
beq newline;
mov r0,r2;
swi 0x00;
bal Loop;

newline:
mov r0,#'\n';
swi 0x00;
bal Loop;

END:
ldr r1,=Infilehandle;
ldr r0,[r1];
swi 0x68;
swi 0x11;