;ADD instruction in assembly

.model small
.stack 100h
.data
.code
    main proc
        mov ah,10001010b
        mov bh,11010111b
        
        AND ah,bh
        
        
        
        main endp
    end main