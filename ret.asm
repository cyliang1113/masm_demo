assume cs: codesg

stacksg segment
	db 16 dup(0)
stacksg ends

codesg segment
	mov ax, 4c00h
	int 21h
	
	start: mov ax, stacksg
	mov ss, ax
	mov sp, 16h
	mov ax, 0h
	push ax
	mov bx, 0h
	ret
codesg ends

end start