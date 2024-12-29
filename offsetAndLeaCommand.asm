; use of offset & lea command

.model small
.stack 100h
.data
    var1 db 'Hello $'
    var2 db 'World$'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov dx,offset var1
        
        mov ah,9
        int 21h
        
        lea dx, var2
        
        mov ah, 9
        int 21h
        main endp
    end main