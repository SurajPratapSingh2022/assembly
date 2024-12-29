;WAP to display array in assembly

include 'emu8086.inc'
.model small
.stack 100h
.data
    arr db 5,6,3
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov si,offset arr
        mov cx,3
        
        print "Array Values: "
        loop1:
            mov dl,[si]
            add dl,48
            
            mov ah,2
            int 21h
            
            mov dl,32
            int 21h
            
            inc si
            
            loop loop1
        main endp
    end main
    