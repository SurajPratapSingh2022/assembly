;WAP to takes input in binary form & display output in binary form

.model small
.stack 100h
.data
    msg db 'Enter the data in binary format upto 8-bit $'
    msg1 db 0dh,0ah,'Output in binary format is: $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ;Display the message
        mov ah,09h
        lea dx,msg
        int 21h
        
        mov bx,0    ;clear bx
        mov cx,8
        again:
            mov ah,01h
            int 21h
            cmp al,13
            je printout
            ;49 --> 0011 0001   48 --> 0011 0000
            ;convert ASCII to decimal
            and al,0fh
            shl bl,1    ;rotate bx to left by 1 -bit
            or bl,al    ;bl=0000 0000   al=0000 0001    b1=0000 0001
            loop again 
            printout:
                mov ah,09h
                lea dx,msg1
                int 21h
                ;BX
                mov cx,8
            disp:    
                shl bl,1
                jnc again1 
                
                mov dl,49
                mov ah,02h
                int 21h
                jmp display
            again1:
                mov dl,48
                mov ah,02h
                int 21h
            display:
                loop disp
        mov ah,4ch
        int 21h
        main endp
    end main