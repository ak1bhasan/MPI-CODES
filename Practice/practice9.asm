.model small
.stack 100h

.data

msg1 db 'Take a lowercasen character input : $'
msg2 db 10, 13, 'Take another lowecase character input : $'
msg3 db 10, 13, 'Show output: $'

.code

mov ax, @data
mov ds, ax

mov ah, 9
lea dx, msg1
int 21h

mov ah, 1
int 21h

mov bl, al

mov ah, 9
lea dx, msg2
int 21h

mov ah, 1
int 21h

mov cl, al

mov ah, 9
lea dx, msg3
int 21h

cmp bl, cl
jl show1
jg show2



show1:
mov ah, 2
mov dl,bl
int 21h
jmp end

show2:
mov ah, 2
mov dl, cl
int 21h
jmp end


end:
mov ah, 4ch
int 21h

