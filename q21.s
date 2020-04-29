filename: .asciz "file1.txt";
filehandler: .word 0;
line: .skip 50;

ldr r0,=filename;
mov r1,#0;
swi 0x66;
ldr r1,=filehandler;
str r0,[r1];
ldr r1,=line;
mov r2,#50;
swi 0x6a;
ldr r0,=line;
swi 0x02;
swi 0x68;
swi 0x11;