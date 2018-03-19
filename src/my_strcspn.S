BITS 64

SECTION .text

GLOBAL strcspn

strpbrk:
	push rbp
	mov rbp, rsp
	mov rdx, rdi
	xor rax, rax

my_loop:
	cmp BYTE [rdx], 0
	jz my_end
	mov r9, rsi
	jmp my_check

my_inc:
	inc rdx
	inc rax
	jmp my_loop

my_check:
	cmp BYTE [r9], 0
	jz my_inc
	mov al, [rdx]
	cmp [r9], al
	jz my_end
	inc r9
	jmp my_check

my_end:
	leave
	ret