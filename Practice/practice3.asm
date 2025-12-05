.model small
.stack 100h

.data

var1 db 3h
char db 'A'
sent1 db 'Hello$'
sent2 db 10, 13, 'World!$'
sent3 db 'Akib$'
sent4 db 'Hasan$'

.code
mov ax, @data
mov ds, ax

;mov ah, 2
;mov dl, char
;int 21h


;mov al, 2h
;add al, var1
;add al, 30h

;mov ah, 2
;mov dl, al
;int 21h

;mov ah, 9
;lea dx, sent1
;int 21h 

;mov ah, 9
;lea dx, sent1
;int 21h


;mov ah, 9
;lea dx, sent2
;int 21h

;mov ah, 9
;lea dx, sent3
;int 21h

;mov ah, 2
;mov dl, 20h
;int 21h


;mov ah, 9
;lea dx, sent4
;int 21h



