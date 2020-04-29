filename: .asciz "file1.txt";
line: .asciz "Inserted one line into file";
filehandler: .word 0;

ldr r0,=filename;
mov r1,#1;
swi 0x66;
ldr r1,=filehandler;
str r0,[r1];
ldr r1,=line;
swi 0x69;
swi 0x68;
swi 0x11;