	.file	"gets.c"
	.text
	.globl	gets
	.type	gets, @function
gets:
.LFB24:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edi
	movl	%edi, %ebx
	movl	$0, %esi
	jmp	.L2
.L4:
	addl	$1, %ebx
	movb	%al, -1(%ebx)
	movl	$1, %esi
.L2:
	movl	stdin, %eax
	movl	%eax, (%esp)
	call	_IO_getc
	cmpl	$10, %eax
	je	.L3
	cmpl	$-1, %eax
	jne	.L4
	movb	$0, (%ebx)
	testl	%esi, %esi
	jne	.L7
	cmpl	$-1, %eax
	je	.L8
.L7:
	movl	%edi, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
	jmp	.L9
.L3:
	movb	$0, (%ebx)
	jmp	.L7
.L9:
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE24:
	.size	gets, .-gets
	.globl	echo
	.type	echo, @function
echo:
.LFB25:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	leal	20(%esp), %ebx
	movl	%ebx, (%esp)
	call	gets
	movl	%ebx, (%esp)
	call	puts
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	je	.L12
	call	__stack_chk_fail
.L12:
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE25:
	.size	echo, .-echo
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
