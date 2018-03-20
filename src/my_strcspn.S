BITS 64

SECTION .text

GLOBAL strcspn

strcspn:
	push rbp
	mov rbp, rsp
	xor rax, rax

my_loop:
	cmp BYTE [rdi], 0
	jz my_end
	mov r9, rsi
	jmp my_check

my_inc:
	inc rdi
	inc rax
	jmp my_loop

my_check:
	cmp BYTE [r9], 0
	jz my_inc
	mov r8b, [rdi]
	cmp [r9], r8b
	jz my_end
	inc r9
	jmp my_check

my_end:
	leave
	ret