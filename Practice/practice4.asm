.model small
.stack 100h

.data

sent1 db 'Enter a lowercase letter : $'
sent2 db 'The Uppercase version : $'
newline db 10, 13, '$'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, sent1
int 21h

mov ah, 1
int 21h

mov cl, al
sub cl, 20h

mov ah,9
lea dx, newline
int 21h

mov ah, 9
lea dx, sent2
int 21h

mov ah, 2
mov dl, cl
int 21h

  
