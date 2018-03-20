BITS 64

SECTION .text

GLOBAL strchr

strchr:
	push rbp
	mov rbp, rsp
	mov rax, rdi

my_for:
	cmp BYTE [rax], sil
	jz end_not_null
	cmp BYTE [rax], 0
	jz end_null
	inc rax
	jmp my_for

end_null:
	xor rax, rax

end_not_null:
	leave
	ret