	.file	"gfun.c"
	.text
	.globl	gfun
	.type	gfun, @function
gfun:
.LFB0:
	.cfi_startproc
	leal	(%rdi,%rsi), %eax
	cltq
	movslq	%edi, %rdi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	orq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	gfun, .-gfun
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
