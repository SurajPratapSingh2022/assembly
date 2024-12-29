.model small
.stack 100h 
.data
    msg db'Hello Shivam $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ;program logic
        
        
        mov ah,09h
        mov dx,offset msg
        int 21h
        
        ;terminate program
        mov ah,4ch
        int 21h 
        
        main endp
    end main
        