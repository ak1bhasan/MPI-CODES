; Store a number 50 (in decimal) in BL
; Take an Input of 1 digit from the user.
; Multiply it by 15.
; Compare the two values.
; If they are equal, display “Numbers are Equal”.
; If not, display ONLY the GREATER number:
;   - If 50 is greater ? “The constant value is greater”
;   - If user input ×15 is greater ? “The user input is greater”

.model small
.stack 100h
.data

msg1 db 'Numbers are Equal.$'
msg2 db 'The constant value is greater.$'
msg3 db 'The user input is greater.$'

.code

mov ax, @data
mov ds, ax

mov bl, 45

mov ah, 1
int 21h
sub al, '0'


mov cl, 15
mul cl          ;Multiplication result is stored in AX

cmp al, bl
je num_equal
jg user_input_generator


const_value_generator:
mov ah, 9
lea dx, msg2
int 21h
jmp end

num_equal:
mov ah, 9
lea dx, msg1
int 21h
jmp end

user_input_generator:
mov ah, 9
lea dx, msg3
int 21h


end:
mov ah, 4ch
int 21h



