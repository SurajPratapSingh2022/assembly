;push & pop stack operation in assembly

.model small
.stack 100h
.data
.code
    main proc
        mov ax,5
        push ax
        pop bx
        
        main endp
    end main