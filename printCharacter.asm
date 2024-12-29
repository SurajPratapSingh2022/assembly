;WAP to print single & multiple character on screen one-by-one

.model small
.stack 100h
.data
.code
    main proc
        mov dl,"S"
        mov ah,2
        int 21h
        
        mov dl,"U"
        mov ah,2
        int 21h
        
        mov dl,"R"
        mov ah,2
        int 21h
        
        mov dl,"A"
        mov ah,2
        int 21h
        
        mov dl,"J"
        mov ah,2
        int 21h
        
        
        
        mov ah,4ch
        int 21h
        main endp
    end main