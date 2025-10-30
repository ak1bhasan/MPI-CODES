;using proper syntax 
;take three numbers and store them in AH, CL, CH 
;Add the first two numbers
;Subtract the third number from the sum
;Store the final answer in DL


.model small
.stack 100h

.data
.code


mov ah, 56h
mov cl, 34h
mov ch, 76h 

add ah, cl

sub ah, ch

mov dl, ah
        
        
        