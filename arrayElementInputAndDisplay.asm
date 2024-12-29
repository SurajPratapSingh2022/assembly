;WAP to take number & then print smallest & largest element of array in assembly

include 'emu8086.inc'
.model small
.data
    arr db 5 dup(?)
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov cx,5
        mov si,offset arr
        
        print "Enter 5 Number in Array:"
        
        loop1:
            mov ah,1
            int 21h
            mov [si],al
            inc si
            loop loop1
            
            mov ah,2
            mov dl,10
            int 21h
            
            mov dl,13
            int 21h
            
            mov si,offset arr
            mov cx,5
            
            
            print "Your Enter: "
       loopOut:
            mov dl,[si]
            mov ah,2
            int 21h
            
            mov dl,32
            mov ah,2
            int 21h
            
            inc si
            loop loopOut
            