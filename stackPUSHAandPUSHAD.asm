

.model small
.stack 100h
.data
.code
    main proc 
        mov ax,1
        mov bx,1
        mov cx,1
        mov dx,1
        
        PUSHA       ;PUSHAD work on 32bit & PUSAA work on 16bit
        
        mov ax,4
        mov bx,4
        mov cx,4
        mov dx,4
        
        POPA
        
        
        main endp
    end main