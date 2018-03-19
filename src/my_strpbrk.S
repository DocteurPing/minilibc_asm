BITS 64

SECTION .text

GLOBAL strpbrk

strpbrk:
	push rbp
	mov rbp, rsp
	mov rdx, rdi

my_loop:
	cmp BYTE [rdx], 0
	jz my_end_fail
	mov r9, rsi
	jmp my_check

my_inc:
	inc rdx
	jmp my_loop

my_check:
	cmp BYTE [r9], 0
	jz my_inc
	mov al, [rdx]
	cmp [r9], al
	jz my_end_good
	inc r9
	jmp my_check

my_end_fail:
	xor rax, rax
	jmp my_end

my_end_good:
	mov rax, rdx

my_end:
	leave
	ret