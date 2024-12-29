.model small
.stack 100h 
.data
    ;declare variable
.code
    main proc
        mov ax,@data	;ax=accumulator
        mov ds,ax	;ds=segment register
        
        ;program logic
        
        main endp
    end main
        