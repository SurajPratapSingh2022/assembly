;call & ret instruction in procedure

.model small
.stack 100h
.data
.code
    main proc
        mov ax,2
        call sub1
        mov bx,2

        main endp
    sub1 proc
        mov ax,5
        ;ret
        mov bx,5
        ret
        sub1 endp
    end main