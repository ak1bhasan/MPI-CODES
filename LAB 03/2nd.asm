.model small
.stack 100h
.data

;variable declaring
var1 db 25h
char1 db 'A'

.code

mov ax, @data
mov ds, ax

mov ah, 2
mov dl, char1
int 21h

;mov ah, 2
;mov dl, var1
;int 21h

mov al, 50h
add al, var1
int 21h
