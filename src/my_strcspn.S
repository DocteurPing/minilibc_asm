BITS 64

SECTION .text

GLOBAL strcspn

strcspn:
	push rbp
	mov rbp, rsp
	xor rax, rax

my_loop:
	mov r9, rsi
	jmp my_check
	cmp BYTE [rdi], 0
	jz my_end

my_inc:
	inc rdi
	inc rax
	jmp my_loop

my_non_inc:
	inc rdi
	jmp my_loop

my_check:
	cmp BYTE [r9], 0
	jz my_inc
	mov al, [rdi]
	cmp [r9], al
	jz my_non_inc
	inc r9
	jmp my_check

my_end:
	leave
	ret