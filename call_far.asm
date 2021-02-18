assume cs: codesg


codesg segment
	start: mov ax, 0h
	call far ptr s
	inc ax
	s: pop ax
	add ax, ax
	pop bx
	add ax, bx
	
codesg ends

end start