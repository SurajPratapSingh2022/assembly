;access variable

.model small
.stack 100h
.data
    var1 db "suraj$"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov dx,offset var1
        lea dx,var1
        
        mov ah,9
        int 21h
        
        main endp
    end main