assume cs: codesg

codesg segment
	dw 0111h, 0222h, 0333h
	
	start: mov ax, 0000h					; 有start, ip会直接指向这里, 没有start, ip是0
	mov bx, offset start
	
	s: add ax, 0001h
	mov cx, offset s
	
	mov ax, 4c00h
	int 21h
codesg ends

end start