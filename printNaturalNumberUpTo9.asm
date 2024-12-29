;WAP to print natural number 1 to 9

.model small
.stack 100h
.data
.code
    main proc
        mov cx, 9
        mov dx, 49      ;ascii code of 1
        
        text:
            mov ah, 2
            int 21h
            
            ;add dx, 1
            inc dx
            
            loop text
        
        
        main endp
    end main