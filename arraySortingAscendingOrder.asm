;WAP to sort Array in Acending & Descending order using assembly

include 'emu8086.inc'
.model small
.stack 100h
.data
    arr db 5 dup(?)
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        print "Enter 5 Numbers in Array: "
        
        mov cx, 5
        mov bx, offset arr
    inputs:
        mov ah, 1
        int 21h
        sub al, '0'
        mov [bx], al
        inc bx
        loop inputs
        
        mov cx, 5
    outerLoop:
        dec cx
        mov si, 0
    compLoop:
        mov al, arr[si]
        mov dl, arr[si+1]
        cmp al, dl
        jbe noSwap
        
        mov arr[si], dl
        mov arr[si+1], al
        
    noSwap:
        inc si
        mov bx, 5
        sub bx, cx
        cmp si, bx
        jl compLoop
        cmp cx, 1
        jg outerLoop
        
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        print "After Sorting Array: "
        
        mov cx, 5
        mov bx, offset arr
    outputs:
        mov al, [bx]
        add al, '0'
        mov dl, al
        mov ah, 2
        int 21h
        
        mov dl, 32
        mov ah, 2
        int 21h
        
        inc bx
        loop outputs
        
        mov ah, 4Ch
        int 21h
    main endp
end main
