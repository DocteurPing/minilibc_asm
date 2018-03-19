BITS 64

SECTION .text

GLOBAL memset

memset:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	mov rax, rdi

my_for:
	cmp rdx, rcx
	jz end
	mov [rax], sil
	inc rcx
	inc rax
	jmp my_for

end:
	mov rax, rdi
	leave
	ret