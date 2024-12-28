;WAP to take two single digit numbers as an input then display the sum of sum of two numbers ?

.model small
.stack 100h
.data
    msg db 'Enter the First Number $'
    msg1 db 0dh,0ah,'Enter the Second Number $'
    msg2 db 0dh,0ah,'Sum of two Numbers= $'
    num1 db ?
    num2 db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        ;Display a message
        mov ah,09h
        lea dx,msg
        int 21h
        ;Input a character
        mov ah,01h
        int 21h
        ;it will be in al register in the form ASCII 3 = 51
        sub al,48
        mov num1,al
        mov ah,09h
        lea dx,msg1
        int 21h
        
        mov ah,01h
        int 21h     ;al=5-->53-48-->5
        sub al,48
        mov num2,al
        mov ah,09h
        lea dx,msg2
        int 21h
        
        ;add num1,num2  ;illegal
        mov al,num1
        add al,num2
        
        mov dl,al
        add dl,48
        mov ah,02h
        int 21h
        
        mov ah,4ch
        int 21h
        
        main endp
    end main