global _start

section .text

_start:
    ; push 1
    ; push 5
    ;call _sum
    ;add esp, 8

    ;mov ebx, eax
    mov eax, 0x4
    ;int 0x80


; global _sum
; _sum:
;     ; stack prep
;     push ebp
;     mov ebp, esp
;     push ebx;
;     ; the actual subroutine 
;     mov eax, [ebp + 8]
;     mov ebx, [ebp + 12]
;     mov eax, ebx;
;     ; restore
;     pop ebx
;     pop ebp
;     mov esp, ebp
;     ret