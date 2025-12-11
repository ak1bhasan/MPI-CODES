.model small
.stack 100h

.data

newline db 10, 13, '$'

.code

mov ax, @data
mov ds, ax

mov cx, 0

WHILE:

cmp cl, 6
je output

mov ah, 1
int 21h

cmp cl, 1
jne show
mov bl, al

show:
inc cl
jmp while

output:
mov ah, 9
lea dx, newline
int 21h

mov ah, 2
mov dl, bl
int 21h

mov ah, 4ch
int 21h
 


