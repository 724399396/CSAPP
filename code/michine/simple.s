	.file	"simple.c"
	.text
	.globl	simple
	.type	simple, @function
simple:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %ecx
	movl	%ecx, %eax
	addl	(%edx), %eax
	addl	%eax, %ecx
	movl	%ecx, (%edx)
	ret
	.cfi_endproc
.LFE0:
	.size	simple, .-simple
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
