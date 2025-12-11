.model small
.stack 100h

.data

equal_msg db 10, 13, 'Numbers are equal.$'
user_greater_msg db 10, 13, 'The User input is Greater.$'
constant_greater_msg db 10, 13, 'The constant value is Greater.$' 

.code
mov ax, @data
mov ds, ax

mov bl, 45

mov ah, 1
int 21h
sub al, '0'

mov cl, 15
MUL cl

cmp al, bl
je equal
jg user_greater


mov ah, 9
lea dx, constant_greater_msg
int 21h
jmp end

equal:
mov ah, 9
lea dx, equal_msg
int 21h
jmp end

user_greater:
mov ah, 9
lea dx, user_greater_msg
int 21h


end:
mov ah, 4ch
int 21h

