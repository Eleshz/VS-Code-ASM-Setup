section     .text
global      _start

hello:
    mov     edx,len
    mov     ecx,msg
    mov     ebx,1
    mov     eax,4
    int     0x80
    ret

_start:
    call    hello
    xor     eax,eax
    int     0x80

section     .data
msg     db  'Hello world',0xa
len     equ $ - msg
