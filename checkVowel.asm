;Write an assembly language program that reads a chracter from keyword & determine whether the character is a vowel or constant, your program should display proper message ?
;vowel  --> a, e, i, o , u

.model small
.stack 100h
.data
    msg db 'Enter the Character: $'
    msg1 db 0dh,0ah,'Character is Vowel $'
    msg2 db 0dh,0ah, 'Character is Consonant $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        ;Display a message
        mov ah,09h
        lea dx,msg
        int 21h
        ;input a character
        mov ah,01h
        int 21h     ;al register
        
        cmp al,'a'
        je vowel
        cmp al,'e'
        je vowel
        cmp al,'i'
        je vowel
        cmp al,'o'
        je vowel
        cmp al,'u'
        je vowel
        
        mov ah,09h
        lea dx,msg2
        int 21h
        jmp exit
        vowel:
            mov ah,09h
            lea dx,msg1
            int 21h
        exit:
            mov ah,4ch
            int 21h
        main endp
    end main