assume cs: codesg


codesg segment
	start: mov ax, 0h
	call s
	inc ax
	s: pop ax
	
codesg ends

end start