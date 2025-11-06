.model small
.stack 100h
.data
 
input db 'Take an input : $'    
sent1 db 'User input is equal to 5$'
sent2 db 'User input is greater than 5$'
sent3 db 'User input is less than 5$'    
    
.code 

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, input
int 21h 
 
mov ah, 1
int 21h

mov cl, al
mov bl, 35h
           
mov ah, 2
mov dl, 0Ah 
int 21h

mov ah, 2
mov dl, 0Dh
int 21h

cmp cl, bl
je equal
jg greater
jl lessthan

equal: 

mov ah, 9
lea dx, sent1
int 21h
jmp end

greater:

mov ah, 9
lea dx, sent2
int 21h
jmp end
 
lessthan: 

mov ah, 9
lea dx, sent3
int 21h
jmp end 

end:
mov ah, 4Ch
int 21h







