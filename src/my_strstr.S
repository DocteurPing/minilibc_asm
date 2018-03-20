BITS 64

SECTION .text

GLOBAL strstr

EXTERN strncmp
EXTERN strlen

strstr:
	push rbp
	mov rbp, rsp
	mov r8, rdi		; move second parameter in another register
	mov rdi, rsi		; move first parameter in rsi for the strlen
	call strlen WRT ..plt
	mov rdx, rax		; get result of strlen in rdx
	mov rdi, r8		; reset second parameter

my_loop:
	call strncmp WRT ..plt
	cmp rax, 0
	jz end_not_null
	cmp BYTE [rdi], 0
	jz end_null
	inc rdi
	jmp my_loop

end_null:
	xor rax, rax
	jmp end

end_not_null:
	mov rax, rdi

end:
	leave
	ret