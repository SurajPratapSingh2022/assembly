;WAP to input a character in lower case and display in upper case

;Lower case to Upper case
;   a --> 97    A --> 65    97-32=65
;   b --> 98    B --> 66    98-32=66
;Upper case to Longer case
;   A --> 65    a --> 97    65+32=97
;   B --> 66    b --> 98    66+32=98

.model small
.stack 100h
.data
    msg db 'Enter the Letter in Lower Case $'
    msg1 db 0dh,0ah,'Letter in Upper Case is: $'
    temp db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        ;Display the Message
        mov ah,09h
        mov dx,offset msg
        int 21h
        ;Input a Character
        mov ah,01h
        int 21h
        mov temp,al
        
        
        ;Display the Message
        mov ah,09h
        mov dx,offset msg1
        int 21h
        sub temp,32
        ;Display a Character
        mov ah,02h
        mov dl,temp
        int 21h
        main endp
    end main