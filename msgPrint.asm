;write a program to display a message on screen     

.model small    ;model directive
.stack 100h     ;stack segment 100h
.data
    ;variables can be declared
    msg db 'Welcome to Assembly Language Program$'
    msg1 db 0dh,0ah,'Hello SPS$'
.code 
    main proc
        mov ax,@data
        mov ds,ax
        ;display a string
        mov ah,09h
        ;mov dx,offset msg
        lea dx,msg  ;lea load effective address(loads the destination with address of source)
        int 21h
        mov ah,09h
        ;mov dx,offset msg1
        lea dx,msg1
        int 21h
        ;terminate a program
        mov ah,4ch
        int 21h
    main endp
    end main