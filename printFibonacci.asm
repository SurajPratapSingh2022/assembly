;WAP to print fibonacci series in assembly

.model small
.stack 100h
.data
    s dw ?
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ax, 1
        mov bx, 1
        mov cx, 8
        
    FNSloop:
        add ax, bx
        mov dx, ax
        mov ax, bx
        mov bx, dx
        loop FNSloop
        
        sub bx, 1
        mov s, bx
        
        mov ah, 4Ch
        int 21h
    main endp
end main

