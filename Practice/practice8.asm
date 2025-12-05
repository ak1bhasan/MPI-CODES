.model small
.stack 100h
.data


.code

mov ax, @data
mov ds, ax


mov ax, -7

cmp ax, 0
je zero
jl negative
jg positive

zero:
mov bx, 0
jmp end

negative:
mov bx, -1
jmp end

positive:
mov bx, 1

end:
mov ah, 4ch
int 21h

