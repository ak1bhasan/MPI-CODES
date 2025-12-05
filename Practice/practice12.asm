.model small
.stack 100h

.data

input db 'Take an integer input : $' 
msg1 db 10, 13, 'Numbers are equal.$'
msg2 db 10, 13, 'The constant value is Greater.$'
msg3 db 10, 13, 'The user input is Greater.$'

.code

mov ax, @data
mov ds, ax

mov bl, 45

mov ah, 9
lea dx, input
int 21h

mov ah, 1
int 21h
sub al, '0'

mov cl, 15
mul cl

cmp al, bl
je equal
jg user_greater
jl constant_greater


equal:
mov ah, 9
lea dx, msg1
int 21h
jmp end

user_greater:
mov ah, 9
lea dx, msg3
int 21h
jmp end

constant_greater:
mov ah, 9
lea dx, msg2
int 21h


end:
mov ah, 4ch
int 21h