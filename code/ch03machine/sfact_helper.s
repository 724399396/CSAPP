	.file	"sfact_helper.c"
	.text
	.globl	sfact_helper
	.type	sfact_helper, @function
sfact_helper:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	cmpq	$1, %rdi
	jg	.L2
	movq	$1, (%rsi)
	jmp	.L1
.L2:
	leaq	-1(%rdi), %rdi
	leaq	8(%rsp), %rsi
	call	sfact_helper
	imulq	8(%rsp), %rbx
	movq	%rbx, 0(%rbp)
.L1:
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	sfact_helper, .-sfact_helper
	.globl	sfact
	.type	sfact, @function
sfact:
.LFB1:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rsi
	call	sfact_helper
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	sfact, .-sfact
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
