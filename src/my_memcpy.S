BITS 64

SECTION .text

GLOBAL memcpy

memcpy:
	xor rcx, rcx
my_loop:
	cmp rdx, rcx
	jz my_end
	mov r8b, [rsi + rcx]	; move contain of src in tmp
	mov [rdi + rcx], r8b	; move contain of tmp in dest
	inc rcx
	jmp my_loop

my_end:
	mov rax, rdi
	ret