;Write a program that will
;take a Lowercase Letter a input
;from the user
;and then display the Uppercase Version
;of the NEXT LETTER       


.model small
.stack 100h 
.data
.code

mov ah, 1
INT 21h

mov ch, al
sub ch, 20h
add ch, 01h

mov ah, 2
mov dl, ch
INT 21h
