	.file	"simple.c"
	.text
	.globl	simple
	.type	simple, @function
simple:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	(%edx), %eax
	addl	8(%esp), %eax
	movl	%eax, (%edx)
	ret
	.cfi_endproc
.LFE0:
	.size	simple, .-simple
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
