.model small
.stack 100h
.data
	byte1 db 1 
	byte2 db 0
	word1 dw 1234h 
	word2  dw 0
	string db "Stressed!", 0dh, 0ah,"$"
	;---- this is a comment 
.code
.startup
 	MAIN PROC
	Mov ax, @data
	Mov ds, ax

	Mov dx, offset string
	Mov ah, 9
	Int 21h
	Mov bx, offset string
	; S and !
	Mov al, [bx] 
	Mov ah, [bx+8]
	Mov [bx], ah
	Mov [bx+8],al
	; t and d
	Mov al, [bx+1]
	Mov ah, [bx+7]
	Mov [bx+1],ah
	Mov [bx+7],al
	; r and e
	Mov al, [bx+2]
	Mov ah, [bx+6]
	Mov [bx+2],ah
	Mov [bx+6],al
	; e and s
	Mov al, [bx+3]
	Mov ah, [bx+5]
	Mov [bx+3], ah
	Mov [bx+5], al
	Mov ah,9
	Mov dx, offset string
	Int 21h
	Mov ax, 4c00h
	Int 21h
 	Main endp
End main



