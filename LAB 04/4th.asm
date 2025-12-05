; Suppose AL and BL have two lowercase characters from the Alphabet.
; Display the one that comes first in the character sequence.

.model small
.stack 100h
.data 
 
.code

mov ax, @data
mov ds, ax

mov al, 'p'
mov bl, 'g'

cmp al, bl
jl display_al
jg display_bl

display_al:
mov ah, 2
mov dl, al
int 21h

display_bl:
mov ah, 2
mov dl, bl
int 21h 


end:
mov ah, 4Ch
int 21h


