.model small
.stack 100h
.data
   
; My name is
; Akib   
   
;variable declaring
sent1 db 'My$'
sent2 db 'name$'
sent3 db 'is$'
sent4 db 'Akib$'

.code

mov ax, @data
mov ds, ax


mov ah, 9
lea dx, sent1
int 21h

mov ah, 2
mov dl, 20h ;Will print space
int 21h

mov ah, 9
lea dx, sent2
int 21h

mov ah, 2
mov dl, 20h
int 21h

mov ah, 9
lea dx, sent3
int 21h

mov ah, 2
mov dl, 0Ah
int 21h

mov ah, 2
mov dl,0Dh
int 21h

mov ah, 9
lea dx, sent4
int 21h       
       
