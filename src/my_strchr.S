BITS 64

SECTION .text

GLOBAL strchr

strchr:
	mov rax, rdi

my_for:
	cmp BYTE [rax], 0
	jz end_null
	cmp BYTE [rax], sil
	jz end_not_null
	inc rax
	jmp my_for

end_null:
	xor rax, rax
	ret

end_not_null:
	ret
