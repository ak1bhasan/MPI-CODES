; Take two numbers in AL and BL
; If AL > BL display 'A'
; If BL > AL display 'B'


.model small
.stack 100h
.data

.code

mov ax, @data
mov ds, ax

mov al, 05h
mov bl, 03h

cmp al, bl
jg display_A
jl display_B

display_A:
mov ah, 2
mov dl, 'A'
int 21h
jmp end

display_B:
mov ah, 2
mov dl, 'B'
int 21h

end:
mov ah, 4CH
int 21h

