assume cs: codesg

codesg segment
	mov ax, 1h
	
	mov cx, 5h
	s: add ax, 1h
	loop s
	
	mov ax, 4c00h
	int 21h
codesg ends

end