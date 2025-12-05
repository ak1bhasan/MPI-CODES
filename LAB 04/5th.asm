; Suppose AL and BL have two lowercase characters from the Alphabet.
; Display the one that comes first in the character sequence.

.model small
.stack 100h
.data

msg1 db 'Take the first character : $'
msg2 db 10, 13, 'Take the second charcter : $'
error_msg db 10, 13, 'Input is not a lowercase letter of the Alphabet$'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

mov cl, al 
          

mov ah, 9
lea dx, msg2
int 21h
          
mov ah, 1
int 21h

mov bl, al

mov al, cl


cmp al, 'a'
jl invalid

cmp al, 'z'
jg invalid

cmp bl, 'a'
jl invalid

cmp bl, 'z'
jg invalid

cmp al, bl
jl display_al
jg display_bl

display_al:
mov ah, 2
mov dl, al
int 21h
jmp end

display_bl:
mov ah, 2
mov dl, bl
int 21h
jmp end

invalid:
mov ah, 9
lea dx, error_msg
int 21h

end:
mov ah, 4ch
int 21h



