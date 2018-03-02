BITS 64

SECTION .text

GLOBAL strlen

strlen:
	xor rax, rax

my_for:
	cmp BYTE [rdi + rax], 0
	jz end
	inc rax
	jmp my_for

end:
	mov eax, rax
	ret