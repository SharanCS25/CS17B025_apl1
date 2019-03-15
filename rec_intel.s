	.file	"rec.c"
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
	sub	rsp, 16
	mov	edi, 6
	call	multno
	mov	DWORD PTR -4[rbp], eax
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	multno
	.type	multno, @function
multno:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jle	.L4
	mov	eax, DWORD PTR -20[rbp]
	movsx	rbx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	multno
	imul	rax, rbx
	jmp	.L5
.L4:
	mov	eax, 1
.L5:
	add	rsp, 24
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	multno, .-multno
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
