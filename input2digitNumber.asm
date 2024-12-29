;WAP to input two digit number

.model small
.stack 100h
.data
    msg1 db 10,13, 'Enter Two Digit Number: $'
    num1 db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov dx,offset msg1
        mov ah,9
        int 21h
        
        mov ah,01
        int 21h
        
        cmp al,09
        jbe number:
        
        number:
            mov cl,04
            rol al,cl
            mov ah,01
            int 21h
        
        
        