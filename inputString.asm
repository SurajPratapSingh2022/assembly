;WAP to input two digit variable & print on screen in assembly

.model small 
.stack 100h
.data
    inmsg db "Enter Number : $"
    outmsg db 10,13, "You Enter : $"
    value db 10,?   
.code
    main proc
        mov ax,@data
        mov ds,ax

        ; display input message
        lea dx,inmsg
        mov ah,09h
        int 21h

        ; input number form user
        lea dx,value
        mov ah,0AH
        int 21h 

        ; display message show

        lea dx,outmsg
        mov ah,09h
        int 21h

        ;output value
        mov dl,value +2
        mov ah,02h
        int 21h
        mov dl,value+3
        int 21h

        mov ah,4ch
        int 21h
        
        main endp
    end main