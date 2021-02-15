assume cs: codesg, ds: datasg, ss: stacksg
datasg segment
	dw 1111h, 0222h, 0333h
datasg ends

stacksg segment
	dw 0h, 0h, 0h, 0h
stacksg ends

codesg segment
	start: 					; 有start, ip会直接指向这里, 没有start, ip是0
	mov ax, datasg
	mov ds, ax
	mov ax, stacksg
	mov ss, ax
	
	mov ax, 0000h
	mov bx, 0000h
	mov cx, 0003h
	s: 
	add ax, ds:[bx]
	add bx, 2h
	loop s
	
	mov ax, 4c00h
	int 21h
codesg ends

end start