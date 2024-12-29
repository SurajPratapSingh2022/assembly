;SHR(shift right) instruction

.model small
.stack 100h
.data
.code
    main proc
        mov ax,8
        shr ax,1
        main endp
    end main