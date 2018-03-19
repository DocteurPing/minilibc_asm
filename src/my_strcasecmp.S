BITS 64

SECTION .text

GLOBAL strcasecmp

strcasecmp:
	push rbp
	mov rbp, rsp

check_first_parameter_lower:
	mov r8b, [rdi]
	cmp r8b, 65		; check if parameter 1 is to lower
	jl check_second_parameter_lower
	cmp r8b, 90		; check if parameter 1 is a letter
	jl parameter1_to_lower

parameter1_to_lower:
	add r8b, 32

check_second_parameter_lower:
	mov r9b, [rsi]
	cmp r9b, 65		; check if parameter 2 is lower
	jl compare
	cmp r9b, 90		; check if parameter 2 is a letter
	jl parameter2_to_lower

parameter2_to_lower:
	add r9b, 32

compare:
	cmp r8b, r9b
	jne end
	cmp r8b, 0
	jz end
	cmp r9b, 0
	jz end
	inc rsi
	inc rdi
	jmp check_first_parameter_lower

end:
	sub r8b, r9b
	movsx rax, r8b
	leave
	ret