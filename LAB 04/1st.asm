; Program: Check if a number is divisible by 3 or not
; Using 8086 Assembly Language

.model small
.stack 100h
.data

msg1 db 'Enter a number : $'
msg2 db 10, 13, 'Number is divisible by 3.$'
msg3 db 10, 13, 'Number is NOT divisible by 3.$'

.code

mov ax, @data
mov ds, ax


mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

sub al, 30h
mov bl, al

mov ah, 0
mov al, bl
mov bl, 3
div bl


cmp ah, 0
je divisible

not_divisible:
mov ah, 9
lea dx, msg3
int 21h
jmp end

divisible:
mov ah, 9
lea dx, msg2
int 21h

end:
mov ah, 4Ch
int 21h


