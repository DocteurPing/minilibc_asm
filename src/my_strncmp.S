BITS 64

SECTION .text

GLOBAL strncmp

strncmp:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
my_loop:
	cmp rcx, rdx
	jz my_end
	mov r9b, [rdi + rcx]
	mov r8b, [rsi + rcx]
	cmp r9b, 0
	jz my_end
	cmp r8b, 0
	jz my_end
	cmp r9b, r8b
	jne my_end
	inc rcx
	jmp my_loop

my_end:
	sub r9b, r8b
	movsx rax, r9b
	leave
	ret