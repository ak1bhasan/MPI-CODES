.model small
.stack 100h

.data

even_msg db 10, 13, 'The number is EVEN$'
odd_msg db 10, 13, 'The number is ODD$'

.code
mov ax, @data
mov ds, ax

mov ah, 1
int 21h

sub al, 30h

mov bl, 2
div bl

cmp ah, 0
je even

odd:
mov ah, 9
lea dx, odd_msg
int 21h
jmp end

even:
mov ah, 9
lea dx, even_msg
int 21h

end:
mov ah, 4ch
int 21h 

