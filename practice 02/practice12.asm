.model small
.stack 100h

.data
newline db 10, 13, '$'
.code
mov ax, @data
mov ds, ax

mov cx, 0

WHILE:

mov ah, 1
int 21h

cmp al, 13
je output

cmp al,'A'
jl lower

cmp al, 'Z'
jg lower

inc cl

lower:
jmp while

output:
mov ah, 9
lea dx, newline
int 21h

add cl, '0'

mov ah, 2
mov dl, cl
int 21h

mov ah, 4ch
int 21h 
