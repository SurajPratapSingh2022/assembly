;XOR Instruciton 

.model small
.stack 100h
.data
.code
    main proc
        mov ah,10001111b
        mov bh,11110010b
        
        XOR ah,bh
        
        
        main endp
    end main