BITS 64

SECTION .text

GLOBAL rindex

rindex:
	xor rcx, rcx
	xor rax, rax

my_loop:
	cmp BYTE [rdi + rcx], 0
	jz my_end
	cmp[rdi + rcx], sil
	mov rax, [rdi + rcx]
	inc rcx
	jmp my_loop

my_end:
	ret