global _start, _sum

section .data
    buf db "Hello, World!", 0xa

section .text

_start:
    push 0x1
    push 0x5
    call _sum
    add esp, 8
    mov ecx, eax


    ; exit
    mov eax, 0x1
    mov ebx, 0
    int 0x80

_sum:
    ; stack prep
    push ebp
    mov ebp, esp
    push ebx

    ; the actual subroutine 
    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    add eax, ebx;
    
    ; restore
    pop ebx
    pop ebp
    ;mov esp, ebp
    ret
