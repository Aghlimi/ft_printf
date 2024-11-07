	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_n                      ## -- Begin function n
	.p2align	4, 0x90
_n:                                     ## @n
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              ## imm = 0x230
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       ## 16-byte Spill
	movaps	%xmm6, -256(%rbp)       ## 16-byte Spill
	movaps	%xmm5, -272(%rbp)       ## 16-byte Spill
	movaps	%xmm4, -288(%rbp)       ## 16-byte Spill
	movaps	%xmm3, -304(%rbp)       ## 16-byte Spill
	movaps	%xmm2, -320(%rbp)       ## 16-byte Spill
	movaps	%xmm1, -336(%rbp)       ## 16-byte Spill
	movaps	%xmm0, -352(%rbp)       ## 16-byte Spill
	movq	%r9, -360(%rbp)         ## 8-byte Spill
	movq	%r8, -368(%rbp)         ## 8-byte Spill
	movq	%rcx, -376(%rbp)        ## 8-byte Spill
	movq	%rdx, -384(%rbp)        ## 8-byte Spill
	movq	%rsi, -392(%rbp)        ## 8-byte Spill
	movq	%rdi, -400(%rbp)        ## 8-byte Spill
	je	LBB0_32
## %bb.31:
	movaps	-352(%rbp), %xmm0       ## 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       ## 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       ## 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       ## 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       ## 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       ## 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       ## 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       ## 16-byte Reload
	movaps	%xmm7, -64(%rbp)
LBB0_32:
	movq	-360(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-368(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-376(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-384(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-392(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -216(%rbp)
	leaq	-32(%rbp), %r8
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	-400(%rbp), %r9         ## 8-byte Reload
	movq	%r9, -40(%rbp)
	leaq	-224(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movl	$0, -44(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB0_28
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$99, %edx
	jne	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	movl	%ecx, -412(%rbp)        ## 4-byte Spill
	ja	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-412(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -424(%rbp)        ## 8-byte Spill
	jmp	LBB0_6
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -424(%rbp)        ## 8-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-424(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -428(%rbp)        ## 4-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$100, %edx
	jne	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	movl	%ecx, -444(%rbp)        ## 4-byte Spill
	ja	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-444(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-440(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -456(%rbp)        ## 8-byte Spill
	jmp	LBB0_11
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-440(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -456(%rbp)        ## 8-byte Spill
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-456(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %esi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -460(%rbp)        ## 4-byte Spill
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$115, %edx
	jne	LBB0_17
## %bb.13:                              ##   in Loop: Header=BB0_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -472(%rbp)        ## 8-byte Spill
	movl	%ecx, -476(%rbp)        ## 4-byte Spill
	ja	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-476(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-472(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -488(%rbp)        ## 8-byte Spill
	jmp	LBB0_16
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-472(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -488(%rbp)        ## 8-byte Spill
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-488(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rsi
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -492(%rbp)        ## 4-byte Spill
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$120, %edx
	jne	LBB0_22
## %bb.18:                              ##   in Loop: Header=BB0_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -504(%rbp)        ## 8-byte Spill
	movl	%ecx, -508(%rbp)        ## 4-byte Spill
	ja	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-508(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-504(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -520(%rbp)        ## 8-byte Spill
	jmp	LBB0_21
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-504(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -520(%rbp)        ## 8-byte Spill
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-520(%rbp), %rax        ## 8-byte Reload
	movl	(%rax), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -524(%rbp)        ## 4-byte Spill
LBB0_22:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	cmpl	$112, %edx
	jne	LBB0_27
## %bb.23:                              ##   in Loop: Header=BB0_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-32(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -536(%rbp)        ## 8-byte Spill
	movl	%ecx, -540(%rbp)        ## 4-byte Spill
	ja	LBB0_25
## %bb.24:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-540(%rbp), %eax        ## 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        ## 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        ## 8-byte Spill
	jmp	LBB0_26
LBB0_25:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-536(%rbp), %rax        ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        ## 8-byte Spill
LBB0_26:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-552(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rsi
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -556(%rbp)        ## 4-byte Spill
LBB0_27:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_1
LBB0_28:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_30
## %bb.29:
	addq	$560, %rsp              ## imm = 0x230
	popq	%rbp
	retq
LBB0_30:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rsi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -36(%rbp)
	movq	l___const.main.h(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	l___const.main.h+8(%rip), %rax
	movq	%rax, -24(%rbp)
	movw	l___const.main.h+16(%rip), %cx
	movw	%cx, -16(%rbp)
	movb	l___const.main.h+18(%rip), %dl
	movb	%dl, -14(%rbp)
	movb	$64, -32(%rbp)
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	cmpq	%rdi, %rsi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	jne	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%c\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d\n"

L_.str.2:                               ## @.str.2
	.asciz	"%s\n"

L_.str.3:                               ## @.str.3
	.asciz	"%x\n"

L_.str.4:                               ## @.str.4
	.asciz	"%p\n"

	.section	__TEXT,__const
	.p2align	4               ## @__const.main.h
l___const.main.h:
	.asciz	"hello world~\000\000\000\000\000\000"

	.section	__TEXT,__cstring,cstring_literals
L_.str.5:                               ## @.str.5
	.asciz	"%s"


.subsections_via_symbols
