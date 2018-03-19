BITS 64

SECTION .text

GLOBAL rindex

rindex:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	xor rax, rax

my_loop:
	cmp [rdi + rcx], sil
	jz my_ret
	cmp BYTE [rdi + rcx], 0
	jz my_end
	inc rcx
	jmp my_loop

my_ret:
	mov rax, [rdi + rcx]

my_end:
	leave
	ret