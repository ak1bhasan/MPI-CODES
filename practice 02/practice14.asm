.model small
.stack 100h

.data

.code
mov ax, @data
mov ds, ax

mov ax, +1

cmp ax, 0
je equal
jg greater

lesser:
mov bx, -1
jmp end

greater:
mov bx, +1
jmp end

equal:
mov bx, 0

end:
mov ah, 4ch
int 21h
