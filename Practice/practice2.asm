; -------------------------------------------------------
; WHILE loop logic:
; Keep reading characters from the user until ENTER is pressed
; For each character:
;   - If it is a capital letter ('A' to 'Z'), increment the counter CL
;   - Otherwise, ignore it and continue reading
; When ENTER is pressed, exit the loop and print the number of capital letters
; -------------------------------------------------------

.model small
.stack 100h
.data

newline db 10, 13, '$'

.code

mov ax, @data
mov ds, ax

mov cx, 0

WHILE:
mov ah, 1
int 21h

cmp al, 13
je print_num_of_char

cmp al, 'A'
jl WHILE

cmp al, 'Z'
jg WHILE

inc cl
jmp WHILE

print_num_of_char:
mov ah, 9
lea dx, newline
int 21h

add cl, 30h

mov ah, 2
mov dl, cl
int 21h

end:
mov ah, 4ch
int 21h


