.model small
.stack 100h
.data

;variable declaring
var1 db 25h
char1 db 'A'
sentence1 db 'Hello World$'
sent1 db 'Hello$'
sent2 db 'World$'

.code

mov ax, @data
mov ds, ax

;mov ah, 2
;mov dl, char1
;int 21h

;mov ah, 2
;mov dl, var1
;int 21h

;mov al, 50h
;add al, var1
;int 21h     

mov ah, 9              ; Function 9: Display string
lea dx, sentence1      ; Load address of 'Hello World$'
int 21h                ; Print the string
                                          
                                          
mov ah, 2
mov dl, 0Ah
int 21h

mov dl, 2
mov dl, 0Dh
int 21h
                                          
mov ah, 9
lea dx, sent1
int 21h

mov ah, 2              ; Function 2: Display single character
mov dl, 0Ah            ; Line feed (move cursor to next line)
int 21h

mov ah, 2              ; Function 2: Display single character
mov dl, 0Dh            ; Carriage return (move cursor to line start)
int 21h
        
mov ah, 9
lea dx, sent2
int 21h
