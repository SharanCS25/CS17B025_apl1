	.file	"ls.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 224
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -224[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	mov	DWORD PTR -216[rbp], eax
	mov	eax, DWORD PTR -216[rbp]
	mov	DWORD PTR -220[rbp], eax
	add	DWORD PTR -224[rbp], 1
.L2:
	mov	eax, DWORD PTR -224[rbp]
	cmp	eax, DWORD PTR -212[rbp]
	jl	.L3
	mov	DWORD PTR -224[rbp], 1
	jmp	.L4
.L7:
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	cmp	DWORD PTR -220[rbp], eax
	jge	.L5
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	mov	DWORD PTR -220[rbp], eax
.L5:
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	cmp	DWORD PTR -216[rbp], eax
	jle	.L6
	mov	eax, DWORD PTR -224[rbp]
	cdqe
	mov	eax, DWORD PTR -208[rbp+rax*4]
	mov	DWORD PTR -216[rbp], eax
.L6:
	add	DWORD PTR -224[rbp], 1
.L4:
	mov	eax, DWORD PTR -224[rbp]
	cmp	eax, DWORD PTR -212[rbp]
	jl	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
