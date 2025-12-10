.model small
.stack 100h

.data

msg1 db 'Take an integer : $'
msg2 db 10, 13, 'Take another integer : $'
msg3 db 10, 13, 'Output : $'

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

add bl, al
sub bl, 30h

mov ah, 9
lea dx, msg3
int 21h

mov ah, 2
mov dl, bl
int 21h


