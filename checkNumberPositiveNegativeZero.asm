;WAP to find the number is positive or negative or zero in assembly

.model small
.stack 100h
.data
    msg1 db 10,13, 'Enter Number: $'
    msg2 db 10,13, 'Number is Positive$'
    msg3 db 10,13, "Number is Negative$"
    msg4 db 10,13, "Number is Zero$"
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov dx, offset msg1
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        
        mov bl, al
        sub bl, '0'
        
        cmp al, 2Dh
        je negative
        
        cmp bl, 0
        je zero
        
        jg positive
        jl negative

    positive:
        lea dx, msg2
        mov ah, 9
        int 21h
        mov ah, 4Ch
        int 21h

    negative:
        lea dx, msg3
        mov ah, 9
        int 21h
        mov ah, 4Ch
        int 21h
        
    zero:
        lea dx, msg4
        mov ah, 9
        int 21h
        mov ah, 4Ch
        int 21h
        
    main endp
end main
