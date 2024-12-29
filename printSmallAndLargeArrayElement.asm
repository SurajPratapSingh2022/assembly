;WAP to find maximum & minimun value from array in assembly

include 'emu8086.inc'
.model small
.stack 100h
.data
    arr db 8,5,3,6,2
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov si,offset arr
        mov cx,5
        mov bl,[si]
        
        loop1:
            cmp [si],bl
            jle small       ;for small array element
            ;jge small      ;for large array element
        compare:
            inc si
            loop loop1
            
            print "Smallest Value in Array: "
            add bl,48
            mov dl,bl
            mov ah,2
            int 21h
        large:
            mov bl,[si]
            jmp compare
     
        main endp
    end main