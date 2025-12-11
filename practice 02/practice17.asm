.model small
.stack 100h

.data

equal_msg db 10, 13, 'Numbers are equal$'
const_greater db 10, 13, 'The Constant value is greater$'
user_greater db 10, 13, 'The User value is greater$'

.code
mov ax, @data
mov ds, ax


mov bl, 45

mov ah, 1
int 21h

sub al, 30h
mov cl, 15
mul cl


cmp al, bl
je equal
jg user

const:
mov ah, 9
lea dx, const_greater
int 21h
jmp end

user:
mov ah, 9
lea dx, user_greater
int 21h
jmp end

equal:
mov ah, 9
lea dx, equal_msg
int 21h

end:
mov ah, 4ch
int 21h


