.model small
.stack 100h

.data

.code  


; Case Conversion Program
; Uppercase to Lowercase
; Captial letter to Small letter
mov ah, 1
INT 21h

add al, 20h

mov ah, 2
mov dl, al
INT 21h
       
       
; Small letter to capital letter

mov ah, 1
INT 21h

sub al, 20h

mov ah, 2
mov dl, al
INT 21h       