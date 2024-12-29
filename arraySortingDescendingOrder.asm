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
        
        ; Input loop
        mov cx, 5
        mov bx, offset arr
    inputs:
        mov ah, 1          ; Read a single digit
        int 21h
        sub al, '0'        ; Convert ASCII to number
        mov [bx], al       ; Store number in array
        inc bx
        loop inputs
        
        ; Bubble Sort
        mov cx, 5
    outerLoop:
        dec cx
        mov si, 0
    compLoop:
        mov al, arr[si]
        mov dl, arr[si+1]
        cmp al, dl
        jnc noSwap         ; If al <= dl, no need to swap
        
        ; Swap
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
        
        ; New line
        mov ah, 2
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        print "After Sorting Array: "
        
        ; Output loop
        mov cx, 5
        mov bx, offset arr
    outputs:
        mov al, [bx]
        add al, '0'        ; Convert number to ASCII
        mov dl, al
        mov ah, 2
        int 21h            ; Display number
        
        mov dl, 32         ; Print space
        mov ah, 2
        int 21h
        
        inc bx
        loop outputs
        
        mov ah, 4Ch        ; Exit
        int 21h
    main endp
end main
