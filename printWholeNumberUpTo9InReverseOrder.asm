;WAP to print whole number upto 9 in reverse order

.model small
.stack 100h
.data
.code
    main proc
        mov cx, 10
        mov dx, 57      ;ascii code of 9
        
        text:
            mov ah, 2
            int 21h
            
            ;add dx, 1
            dec dx
            
            loop text
        
        
        main endp
    end main