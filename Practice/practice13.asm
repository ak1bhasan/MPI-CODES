.model small
.stack 100h

.data

.code

mov ax, @data
mov ds, ax

mov dx, 0

WHILE:

mov ah, 1
int 21h

cmp ah, 13
je end

inc dx

jmp WHILE

end:
mov ah, 4ch
int 21h
