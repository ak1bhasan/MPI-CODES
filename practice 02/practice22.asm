.model small
.stack 100h

.data

msg1 db 10, 13, 'Key letters : $'
msg2 db 10, 13, 'Normal letters : $'

.code
mov ax, @data
mov ds, ax

mov bx, 0
mov cx, 0

WHILE:
cmp bl, 8
je output

mov ah, 1
int 21h

cmp al, 'o'
je key

cmp al, 'p'
je key

inc bl
jmp WHILE

key:
inc bl
inc cl
jmp while

output:
mov ah, 9
lea dx, msg1
int 21h

mov al, cl
add al, 30h

mov ah, 2
mov dl, al
int 21h

mov ah, 9
lea dx, msg2
int 21h

sub bl, cl
add bl, 30h

mov ah, 2
mov dl, bl
int 21h

end:
mov ah, 4ch
int 21h




