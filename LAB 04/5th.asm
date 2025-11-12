; Add two numbers
; It will take input from users
; Display the sum of the Numbers


.model small
.stack 100h
.data

addition_sign db ' + $'
equal_sign db ' = $'

.code 

mov ax, @data
mov ds, ax


mov ah, 1
INT 21h

mov bl, al

mov ah, 9
lea dx, addition_sign  
INT 21h


mov ah, 1
INT 21h

mov cl, al

mov ah, 9
lea dx, equal_sign
int 21h

add bl, cl
sub bl, 30h

mov ah, 2
mov dl, bl
int 21h

