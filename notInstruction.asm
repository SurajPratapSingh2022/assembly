;NOT instruction

.model small
.stack 100h
.data
.code
    main proc
        mov ah,10010011b
        
        NOT ah
        main endp
    end main