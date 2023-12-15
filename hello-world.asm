# x86 Assembly Tutorial 001

.global _start
.intel_syntax
.section .text

_start:
    # write a string to stdout
    mov %eax, 4
    mov %ebx, 1 # STDOUT, wherre were writing
    lea %ecx, [message] 
    mov %edx, 13
    int 0x80

    #exit syscall
    mov %eax, 1 
    mov %ebx, 65
    int 0x80


.section .data
    message:
    .ascii "Hello, World\n"

