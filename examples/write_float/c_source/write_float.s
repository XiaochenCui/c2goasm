	.text
	.intel_syntax noprefix
	.file	"write_float.cpp"
	.globl	_Z11write_floatPfPc             # -- Begin function _Z11write_floatPfPc
	.p2align	4, 0x90
	.type	_Z11write_floatPfPc,@function
_Z11write_floatPfPc:                    # @_Z11write_floatPfPc
# %bb.0:
	mov	byte ptr [rsi], 2
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi + 1], eax
	ret
.Lfunc_end0:
	.size	_Z11write_floatPfPc, .Lfunc_end0-_Z11write_floatPfPc
                                        # -- End function
	.ident	"Ubuntu clang version 12.0.0-3ubuntu1~20.04.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
