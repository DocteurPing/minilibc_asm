BITS 64

SECTION .text

GLOBAL strpbrk

strpbrk:
	push rbp
	mov rbp, rsp
	mov r8, rdi

my_loop:
	cmp BYTE [r8], 0
	jz my_end_fail
	mov r9, rsi
	jmp my_check

my_inc:
	inc r8
	jmp my_loop

my_check:
	cmp BYTE [r9], 0
	jz my_inc
	mov al, [r9]
	cmp [r8], al
	jz my_end_good
	inc r9
	jmp my_check

my_end_fail:
	xor rax, rax
	jmp my_end

my_end_good:
	mov rax, [r8]

my_end:
	leave
	ret