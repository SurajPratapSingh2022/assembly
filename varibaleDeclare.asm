;variable declare in assembly

.model small
.stack 100h
.data
    var1 db 6
.code
    main proc
        mov dl, var1
        add dl, 48
        
        mov ah, 2
        int 21h
        main endp
    end main