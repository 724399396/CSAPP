	.file	"arith.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	movl	12(%esp), %eax
	leal	(%eax,%eax,2), %edx
	sall	$4, %edx
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	movzwl	%ax, %eax
	imull	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
