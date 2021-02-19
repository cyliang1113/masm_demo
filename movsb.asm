assume cs: codesg
datasg segment
    db 'aaaaaaaaaaaaaaaa'
    db 16 dup(0)
datasg ends

codesg segment
    start: mov ax, datasg

    mov ds, ax
    mov si, 0h
    mov es, ax
    mov di, 16
    mov cx, 16
    cld
    rep movsb

	mov ax, 4c00h
	int 21h
codesg ends

end start