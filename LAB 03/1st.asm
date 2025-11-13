; Enter a lowercase letter
; Print the uppercase letter

.model small
.stack 100h
.data

sent1 db 'Enter a lowercase letter :$'
sent2 db 'The uppercase version is : $'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, sent1
int 21h 


mov ah, 2
mov dl, 20h ;Printing space
int 21h


mov ah, 1
int 21h

mov bl, al

sub bl, 20h

mov ah, 2
mov dl, 0Ah
int 21h

mov ah, 2
mov dl, 0Dh
int 21h

mov ah, 9
lea dx, sent2
int 21h

mov ah, 2
mov dl, bl
int 21h


