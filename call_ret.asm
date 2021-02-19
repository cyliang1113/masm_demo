assume cs: codesg


codesg segment
	start: mov ax, 1h

	call far ptr s
	inc ax
	inc ax

	s: mov bx, 2h
	inc bx
	inc bx
	ret
	
codesg ends

end start