.model small
.stack 100h

.data
msg1 db 10, 13, 'The user input is greater than 5$'
msg2 db 10, 13, 'The user input is less than 5$'
msg3 db 10, 13, 'The user input is equal to 5$'
.code
mov ax, @data
mov ds, ax

mov ah, 1
int 21h

sub al, 30h

cmp al, 5
je equal
jg greater

mov ah, 9
lea dx, msg2
int 21h
jmp end

equal:
mov ah, 9
lea dx, msg3
int 21h
jmp end

greater:
mov ah, 9
lea dx, msg1
int 21h

end:
mov ah, 4ch
int 21h
