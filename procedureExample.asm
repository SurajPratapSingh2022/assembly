;make procedure

.model small
.stack 100h
.data
    msg1 db 'Assembly$', 0
    msg2 db 'Programming$', 0
    msg3 db 'Language$', 0
.code
    main proc
        mov ax, @data
        mov ds, ax
    
        mov dx, offset msg1
        mov ah, 9
        int 21h
    
        call newLine
    
        mov dx, offset msg2
        mov ah, 9
        int 21h
    
        call newLine
    
        mov dx, offset msg3
        mov ah, 9
        int 21h 
    
        call newLine
    
        mov ah, 4Ch
        int 21h
    main endp

newLine proc
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    mov ah, 2
    int 21h
    ret
newLine endp
end main
