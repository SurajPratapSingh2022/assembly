;WAP to converts a 8-bit binary number into Hexa-decimal ?

.model small
.stack 100h
.data
    msg db 'Number in Hexa decimal: $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        lea dx,msg
        mov ah,09h
        int 21h
        
        mov al,10101011b
        mov bl,al           ;bl=1010 1011
        and al,11110000b    ;al=1010 0000
        shr al,4            ;al=0000 1010
        cmp al,10
        je capa
        cmp al,11
        je capb
        cmp al,12
        je capc
        cmp al,13
        je capd
        cmp al,14
        je cape
        cmp al,15
        je capf
        mov dl,al       ;0-9
        add dl,48       ;convert into ASCII
        mov ah,02h
        int 21h
        jmp next
        capa:
            mov dl,'A'
            mov ah,02h
            int 21h
            jmp next
        capb:
            mov dl,'B'
            mov ah,02h
            int 21h
            jmp next
        capc:
            mov dl,'C'
            mov ah,02h
            int 21h
            jmp next
        capd:
            mov dl,'D'
            mov ah,02h
            int 21h
            jmp next
        cape:
            mov dl,'E'
            mov ah,02h
            int 21h
            jmp next
        capf:
            mov dl,'F'
            mov ah,02h
            int 21h
            jmp next
        next:
            mov al,bl       ;bl=1010 1011
            and al,0fh      ;al=0000 1011
            cmp al,10
            je capa1
            cmp al,11
            je capb1
            cmp al,12
            je capc1
            cmp al,13
            je capd1
            cmp al,14
            je cape1
            cmp al,15
            je capf1
            
            mov dl,al       ;0-9
            add dl,48
            mov ah,02h
            int 21h
            jmp exit
            capa1:
                mov dl,'A'
                mov ah,02h
                int 21h
                jmp exit
            capb1:
                mov dl,'B'
                mov ah,02h
                int 21h
                jmp exit
            capc1:
                mov dl,'C'
                mov ah,02h
                int 21h
                jmp exit
            capd1:
                mov dl,'D'
                mov ah,02h
                int 21h
                jmp exit
            cape1:
                mov dl,'E'
                mov ah,02h
                int 21h
                jmp exit
            capf1:
                mov dl,'F'
                mov ah,02h
                int 21h
            exit:
                mov ah,4ch
                int 21h
         main endp
     end main  