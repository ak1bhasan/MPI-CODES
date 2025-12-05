.model small
.stack 100h

.data

msg db 'Take an integer input : $'
newline db 10, 13, '$'
even_msg db 10, 13, 'Number is Even$'
odd_msg db 10, 13, 'Number is Odd$'

.code

mov ax, @data
mov ds, ax

mov ah,9
lea dx, msg
int 21h

mov ah, 1
int 21h

mov bl, 02

div bl

cmp ah, 0 ; 1 0
je even


mov ah, 9
lea dx, odd_msg
int 21h         ; odd message
jmp end


even:
mov ah, 9
lea dx, even_msg
int 21h

end:
mov ah, 4ch
int 21h
 