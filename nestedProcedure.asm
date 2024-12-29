;Nested Procedure

.model small
.stack 100h
.data
.code
    main proc
        mov ax,4
        call sub1
        mov bx,5

        main endp
    sub1 proc
        call sub2
        mov ax,3
        ret
        sub1 endp
    sub2 proc
        ret
        sub2 endp
    end main