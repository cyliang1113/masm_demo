assume cs: codesg

codesg segment
	dw 0111h, 0222h, 0333h
	start: 					; 有start, ip会直接指向这里, 没有start, ip是0
	mov ax, 0000h
	mov bx, 0000h
	mov cx, 3h
	s: 
	add ax, cs:[bx]
	add bx, 2
	loop s
	
	mov ax, 4c00h
	int 21h
codesg ends

end start