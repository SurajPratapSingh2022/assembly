.model small
.stack 100h 
.data
    msg db 'Hello Shivam $'
.code
    main proc
        mov ax,@data        ;ax=accumulator
        mov ds,ax           ;ds=data segment
        
        ;program logic
        
        
        mov ah,09h          ;ah=accumulator high bit register
        mov dx,offset msg   ;dx=data register
        int 21h
        
        ;terminate program
        mov ah,4ch
        int 21h 
        
        main endp
    end main
;AH = 09h: Display the string stored at the memory location specified by DX.
;AH = 4Ch: End the program and return control to the operating system.       