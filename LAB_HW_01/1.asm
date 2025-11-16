.model small
.stack 100h
.data

msg1 db 'Welcome to the Uppercase to Lowercase Conversion Program!$'
msg2 db 10, 13, 'Enter an Uppercase letter : $'
msg3 db 10, 13, 'The Lowercase letter is : $'

.code

mov ax, @data
mov ds, ax


mov ah, 9
lea dx, msg1
int 21h

mov ah, 9
lea dx, msg2
int 21h


mov ah, 1
int 21h

mov bl, al
add bl, 20h

mov ah, 9
lea dx, msg3
int 21h


mov ah, 2
mov dl, bl
int 21h
