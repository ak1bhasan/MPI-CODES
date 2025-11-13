;Displaying a charcter
 
  
.model small
.stack 100h

.data  

.code


;mov AH, 2
;mov DL, '5'
;INT 21H  



;mov ah, 2
;mov dl, 'A'
;INT 21h


 
;Input a character

mov ah, 1
INT 21h

;Then displaying that character

mov ah, 2
mov dl, al
INT 21h
