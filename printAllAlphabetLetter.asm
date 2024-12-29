;WAP to print all small & capital Alphabet letter in assembly

.model small
.stack 100h
.data
.code
    main proc
        mov cx, 26
        mov dx,122      ;assci code of A=65 to Z=90 and a=97 to z=122
        
        test:
            mov ah, 2
            int 21h
            
            dec dx      ;inc-->increment, dec-->decrement
            loop test
        
        main endp
    end main