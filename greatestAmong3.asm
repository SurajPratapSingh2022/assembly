;WAP in assembly to read three numbers from user & then display largest number on the screen

.model small
.stack 100h
.data
    msg1 db 10,13,"Enter First Number: $"
    msg2 db 10,13,"Enter Second Number: $"
    msg3 db 10,13,"Enter Third Number: $"
    msg4 db 10,13,"Largest Number: $"
    num1 db ?
    num2 db ?
    num3 db ?
.code
    main proc 
        mov ax,@data
        mov ds,ax
        
        lea dx,msg1
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov num1,al
        
        lea dx,msg2
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov num2,al
        
        lea dx,msg3
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        mov num3,al
        
        lea dx,msg4
        mov ah,9
        int 21h
        
        mov al,num1
        mov bl,num2
        cmp al,bl
        jge number1
        
        mov al,bl
        
number1:
        mov bl,num3
        cmp al,bl
        jge display_result
        
        mov al,bl
        
display_result:
        mov dl,al
        mov ah,2
        int 21h
        
        mov ah,4Ch
        int 21h
        
    main endp
end main
