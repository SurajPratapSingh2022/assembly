;WAP to display a string in reverse order

.model small
.stack 100h
.data
    msg db 'Hello SPS $'
    strlen equ $-msg
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov si,0
        mov cx,strlen
        dec cx
        again:
            push [si]
            inc si
            loop again
            mov cx,strlen
            dec cx
        disp:
            pop dx
            mov ah,02h
            int 21h
            loop disp
        mov ah,4ch
        int 21h
        main endp
    end main