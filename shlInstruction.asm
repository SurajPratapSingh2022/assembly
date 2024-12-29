;SHL(shift left) Instruction

.model small
.stack 100h
.data
.code
    main proc
        mov ax,00000010b
        shl ax,2
        main endp
    end main