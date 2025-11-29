.model small
.stack 100h
.data


msg1 db 'Character Identification$'
msg2 db 10, 13, 'Take an input : $'
lowercase_msg db 10, 13, 'The user input a lowercase letter.$'
uppercase_msg db 10, 13, 'The user input an uppercase letter.$'
digit_msg db 10, 13, 'The user input a digit.$'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h

mov ah, 9
lea dx, msg2
int 21h

mov ah, 1
int 21h

cmp al, 'a'
jl uppercase

cmp al, 'z'
jg uppercase

lowercase:
mov ah, 9
lea dx, lowercase_msg
int 21h
jmp end

uppercase:
cmp al, 'A'
jl digit

cmp al, 'Z'
jg digit


mov ah, 9
lea dx, uppercase_msg
int 21h
jmp end

digit:
cmp al, '0'
jl end

cmp al, '9'
jg end


mov ah, 9
lea dx, digit_msg
int 21h

end:
mov ah, 4ch
int 21h
  


