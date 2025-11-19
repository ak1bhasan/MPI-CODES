.model small
.stack 100h
.data

myid db 'My ID is 232-115-015$'
msg1 db 10, 13, 'User input for first number is : $'
msg2 db 10, 13, 'User input for second number is : $'
msg3 db 10, 13, 'The sum of $'
msg4 db " and $"
msg5 db " is : $"

.code

mov ax, @data
mov ds, ax


mov ah, 9
lea dx, myid
int 21h

mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

mov bl, al

mov ah, 9
lea dx, msg2
int 21h

mov ah, 1
int 21h

mov cl, al

mov ah, 9
lea dx, msg3
int 21h


mov ah, 2
mov dl, bl
int 21h

mov ah, 9
lea dx, msg4
int 21h

mov ah, 2
mov dl, cl
int 21h

mov ah, 9
lea dx, msg5
int 21h

add bl, cl
sub bl, 30h

mov ah, 2
mov dl, bl
int 21h 

