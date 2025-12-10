.model small
.stack 100h

.data

msg1 db 'Take an integer : $'
msg2 db 10, 13, 'Take another integer : $'

newline db 10, 13, '$'

.code
mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

mov bl, al

mov ah, 9
lea dx, msg2
int 21h

mov ah, 1
int 21h

sub bl, al
add bl, 30h

mov ah, 9
lea dx, newline
int 21h

mov ah, 2
mov dl, bl
int 21h
