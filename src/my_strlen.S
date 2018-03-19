BITS 64

SECTION .text

GLOBAL strlen

strlen:
	push rbp
	mov rbp, rsp
	xor rcx, rcx		; set rax to 0

my_for:
	cmp BYTE [rdi + rcx], 0	; compare if NULL
	jz end			; jump to end
	inc rcx			; rcx ++
	jmp my_for		; jump to my_for

end:
	mov rax, rcx
	leave
	ret