.model small
.stack 100h

.data

newline db 10, 13, '$'
.code

mov ax, @data
mov ds, ax

mov ah, 1
int 21h

mov bl, al
add bl, 20h

add bl, 2

mov ah, 9
lea dx, newline
int 21h
mov ah, 2
mov dl, bl
int 21h


