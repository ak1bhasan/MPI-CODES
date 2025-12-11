.model small
.stack 100h

.data

msg1 db 10, 13, 'Key letters : $'
msg2 db 10, 13, 'Normal letters : $'

.code
mov ax, @data
mov ds, ax


mov cx, 0
mov bx, 0

WHILE:

cmp cl, 8
je output

mov ah, 1
int 21h

cmp al, 'o'
je key

cmp al, 'p'
je key

inc cl
jmp while

key:
inc cl
inc bl
jmp while



output:
mov ah, 9
lea dx, msg1
int 21h

mov al, bl
add al, '0'

mov ah, 2
mov dl, al
int 21h

mov ah, 9
lea dx, msg2
int 21h

sub cl, bl
add cl, '0'

mov ah, 2
mov dl, cl
int 21h

mov ah, 4ch
int 21h



