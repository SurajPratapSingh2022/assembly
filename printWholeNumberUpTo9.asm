;WAP to print whole number upto 9

.model small
.stack 100h
.data
.code
    main proc
        mov cx, 10
        mov dx, 48      ;ascii code of 0
        
        text:
            mov ah, 2
            int 21h
            
            ;add dx, 1
            inc dx
            
            loop text
        
        
        main endp
    end main