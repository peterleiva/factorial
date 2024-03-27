section .text

global _start
_start:
    push 1
    push 5
    call _sum
    add esp, 8


global _sum
_sum:
    push ebp
    mov ebp, esp
    push ebx
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    mov eax, ebx

    ; restore
    pop ebx
    mov esp, ebp
    pop ebp
    ret