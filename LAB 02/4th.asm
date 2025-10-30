.model small
.stack 100h

.data

.code  

;Addition
; Only 0-9

mov ah, 1
INT 21h

mov cl, al

mov ah, 1
INT 21h
mov ch, al

add cl, ch
sub cl, 30h ; if you subtract by 30h it will give us the decimal value    

mov ah, 2
mov dl, cl
INT 21h


; Subtraction

mov ah, 1
int 21h
mov cl, al

mov ah, 1
int 21h
mov ch, al

sub cl, ch
add cl, 30h

mov ah, 2
mov dl, cl
int 21h