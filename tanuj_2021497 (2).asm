global main
extern printf, scanf

section .text

main:
    push rbp
    mov rbp, rsp
    xor eax, eax
    lea rdi, [msg1]
    call printf

    xor eax, eax
    lea rdi, [format]
    lea rsi, [number]
    lea rdx, [string]
    mov eax, 0
    call scanf

    mov eax, 0
    xor eax, eax
    lea rdi, [msg2]
    mov eax, 0
    call printf
    mov eax, 0
    
    xor eax, eax
    mov rsi, [number]
    mov rdi, format2
    mov eax, 0
    call printf

    mov eax, 0
    xor eax, eax
    mov rsi, string
    mov rdi, format1
    mov eax, 0
    call printf

    mov eax, 0
    leave
    ret



section .data
    msg1: db "Enter a number and string: ", 0
    msg2: db "Number and String are respectively: ",10, 0

    format: db "%d %s", 0
    format1: db "%s", 0
    format2: db "%d ", 0


section .bss
    number resb 16
    string resb 100
