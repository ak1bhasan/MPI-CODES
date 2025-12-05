.model small
.stack 100h
.data


.code

mov ax, @data
mov ds, ax

mov ax, -4

cmp ax, 0
jl change_value

change_value:
neg ax


