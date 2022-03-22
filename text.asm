section .text
    use16

%include "macros.asm"

message: db "lozhkaOS loader", NEWLINE, NEWLINE, 0
cmdmsg0: db "> ", 0
int8msg: db "int8!!", NEWLINE, 0
int9msg: db "keyboard input", NEWLINE, 0
