BITS 64

SECTION .text

GLOBAL strlen

strlen:
	xor rax, rax		; set rax to 0

my_for:
	cmp BYTE [rdi + rax], 0	; compare if NULL
	jz end			; jump to end
	inc rax			; rax ++
	jmp my_for		; jump to my_for

end:
	ret