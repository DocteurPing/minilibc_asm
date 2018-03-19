BITS 64

SECTION .text

GLOBAL memmove

memmove:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
	mov rax, rdi		; move pointer dest to rax
	mov r8, rdi
	sub r8, rsi
	cmp r8, 0		; check if src > dest
	jge first_right
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

move_left:
	cmp rcx, rdx
	jz end
	mov r8b, [rsi + rcx]
	mov [rdi + rcx], r8b
	inc rcx
	jmp move_left

end:
	leave
	ret