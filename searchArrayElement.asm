;searching element in array

.model small
.stack 100h
.data
    msg db "Enter Number: $"
    msg1 db 10,13,"Number is Found $"
    msg2 db 10,13,"Number is not Found $"
    value db ?
    num db 5, 3, 8, 1, 7
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, msg
        mov ah, 09h
        int 21h
        
        mov ah, 01h
        int 21h
        sub al, '0'
        mov value, al
        
        lea si, num
        mov cx, 5
        mov al, value
        
    searching:
        mov bl, [si]
        cmp al, bl
        jz numFound
        inc si
        loop searching
        
        lea dx, msg2
        mov ah, 09h
        int 21h
        jmp exitProgram
        
    numFound:
        lea dx, msg1
        mov ah, 09h
        int 21h
        
    exitProgram:
        mov ah, 4Ch
        int 21h
        
    main endp
end main
