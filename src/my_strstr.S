BITS 64

SECTION .text

GLOBAL strstr

EXTERN strncmp
EXTERN strlen

strstr:
	push rbp
	mov rbp, rsp
	mov r8, rsi		; move first parameter in another register
	mov rsi, rdi		; move second parameter in rsi for the strlen
	call strlen WRT ..plt
	mov rdx, rax		; get result of strlen in rdx
	mov rdi, rsi		; reset second parameter

my_loop:
	cmp BYTE [r8], 0
	jz end_null
	mov rsi, r8
	call strncmp WRT ..plt
	cmp rax, 0
	jz end_not_null
	inc r8
	jmp my_loop

end_null:
	xor rax, rax
	jmp end

end_not_null:
	mov rax, r8

end:
	ret