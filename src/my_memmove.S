BITS 64

SECTION .text

GLOBAL memmove

memmove:
	push rbp
	mov rbp, rsp
	mov rax, rdi
	mov r8, rdi
	sub r8, rsi
	cmp r8, 0
	jge first_right

first_left:
	xor rcx, rcx

move_left:
	cmp rcx, rdx
	jz end
	mov r8b, [rsi + rcx]
	mov [rdi + rcx], r8b
	inc rcx
	jmp move_left

first_right:
	dec rdx

move_right:
	cmp rdx, 0
	jl end
	mov r8b, [rsi + rdx]
	mov [rdi + rdx], r8b
	dec rdx
	jmp move_right

end:
	leave
	ret