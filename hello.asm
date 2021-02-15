assume cs: codesg

codesg segment
	mov ax, 123h
	mov bx, 456h
	add ax, bx
	
	mov ax, 4c00h
	int 21h
codesg ends

end