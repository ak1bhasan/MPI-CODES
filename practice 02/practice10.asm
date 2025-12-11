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

cmp al, 13
je end

inc dl
jmp while

end:
mov ah, 4ch
int 21h

