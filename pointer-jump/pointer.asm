.global _start
.intel_syntax
.section .text

_start:
    mov %ecx, 99 
    mov %ebx, 42
    mov %eax, 1
    cmp %ecx, 100
    jl skip       # je (equal), jne (not equal)
    mov %ebx, 13  # jg (greater), jge (greater equal)
skip:             # jl (less), jle (less equal)
    int 0x80
    
.section .data

