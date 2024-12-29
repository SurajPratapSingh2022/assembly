;OR instruction

.model small
.stack 100h
.data
.code
    main proc
        mov ah,10001110b
        mov bh,11000010b
        
        OR ah,bh
 
        main endp
    end main