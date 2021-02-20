assume cs: codesg
datasg segment
    db 'hahaha!!'
datasg ends

codesg segment
    start: mov ax, 0h  ; 0号中断
    mov es, ax
    mov word ptr es:[0], offset f
    mov word ptr es:[2], cs

    mov ax, 1h
    mov bx, 0h
    div bx

    inc ax
    inc ax

    mov ax, 4c00h
    int 21h

    f: mov ax, datasg
    mov ds, ax
    mov si, 0h

    mov ax, 0b800h
    mov es, ax
    mov di, 12*160+36*2 ; es:di 显存空间的中间位置

    mov cx, 8
    s: mov al, ds:[si]
    mov es:[di], al
    mov es:[di + 1], byte ptr 66; 颜色
    inc si
    add di, 2
    loop s

    mov ax, 4c00h
    int 21h

codesg ends

end start