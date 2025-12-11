.model small
.stack 100h

.data

.code
mov ax, @data
mov ds, ax


mov ax, -6

cmp ax, 0
je lesser
jmp end

lesser:
neg ax

end:
mov ah, 4ch
int 21h