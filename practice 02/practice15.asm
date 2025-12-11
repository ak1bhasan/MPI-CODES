.model small
.stack 100h

.data

newline db 10, 13, '$'
error_msg db 'The input is not a Lowercase character$'

.code
mov ax, @data
mov ds, ax

mov ah, 1
int 21h

mov bl, al

mov ah, 1
int 21h

mov ah, 9
lea dx, newline
int 21h

cmp bl, 'a'
jl error

cmp bl, 'z'
jg error 

cmp al, 'a'
jl error

cmp bl, 'z'
jg error

cmp bl, al

jl display_1
jg display_2

error:
mov ah, 9
lea dx, error_msg
int 21h
jmp end

display_1:
mov ah, 2
mov dl, bl
int 21h
jmp end

display_2:
mov ah, 2
mov dl, al
int 21h

end:
mov ah, 4ch
int 21h