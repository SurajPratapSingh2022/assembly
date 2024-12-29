;WAP to check number is even or odd    

.model small
.stack 100h
.data
    msg1 db 10,13,"Enter Number: $"
    msg2 db 10,13,"Number is Even$"
    msg3 db 10,13,"Number is Odd$"
    num db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,msg1
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        sub al, '0'
        mov num, al
        
        mov al, num
        mov bl, 2
        div bl
        
        cmp ah, 0
        je even
        
        lea dx,msg3
        mov ah,9
        int 21h
        jmp done
        
    even:
        lea dx,msg2
        mov ah,9
        int 21h
        
    done:
        mov ah,4Ch
        int 21h
        
    main endp
end main
