.model small
.stack 100h
.data

msg1 db 'The first number is : $'
msg2 db 10, 13, 'The second number is : $'
msg3 db 10, 13, 'The sum is: $'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

mov cl, al

mov ah, 9
lea dx, msg2
int 21h

mov ah, 1
int 21h

mov bl, al

add bl, cl
sub bl, 30h


mov ah, 9
lea dx, msg3
int 21h

mov ah, 2
mov dl, bl
int 21h

end:
mov ah, 4ch
int 21h

