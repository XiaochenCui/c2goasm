	.text
	.intel_syntax noprefix
	.file	"glob.cpp"
	.globl	_Z17swap_flot32_arrayPci        # -- Begin function _Z17swap_flot32_arrayPci
	.p2align	4, 0x90
	.type	_Z17swap_flot32_arrayPci,@function
_Z17swap_flot32_arrayPci:               # @_Z17swap_flot32_arrayPci
# %bb.0:
	test	esi, esi
	je	.LBB0_3
# %bb.1:
	movsxd	rax, esi
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	mov	edx, dword ptr [rdi + rcx]
	bswap	edx
	mov	dword ptr [rdi + rcx], edx
	add	rcx, 4
	cmp	rcx, rax
	jb	.LBB0_2
.LBB0_3:
	ret
.Lfunc_end0:
	.size	_Z17swap_flot32_arrayPci, .Lfunc_end0-_Z17swap_flot32_arrayPci
                                        # -- End function
	.globl	_Z19big_endian_to_floatPc       # -- Begin function _Z19big_endian_to_floatPc
	.p2align	4, 0x90
	.type	_Z19big_endian_to_floatPc,@function
_Z19big_endian_to_floatPc:              # @_Z19big_endian_to_floatPc
# %bb.0:
	vcvttss2si	rax, dword ptr [rdi]
	bswap	eax
	vcvtsi2ss	xmm0, xmm0, rax
	ret
.Lfunc_end1:
	.size	_Z19big_endian_to_floatPc, .Lfunc_end1-_Z19big_endian_to_floatPc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_glob.cpp
	.type	_GLOBAL__sub_I_glob.cpp,@function
_GLOBAL__sub_I_glob.cpp:                # @_GLOBAL__sub_I_glob.cpp
# %bb.0:
	push	rax
	mov	edi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	edi, offset _ZNSt8ios_base4InitD1Ev
	mov	esi, offset _ZStL8__ioinit
	mov	edx, offset __dso_handle
	pop	rax
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end2:
	.size	_GLOBAL__sub_I_glob.cpp, .Lfunc_end2-_GLOBAL__sub_I_glob.cpp
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_glob.cpp
	.ident	"Ubuntu clang version 12.0.0-3ubuntu1~20.04.3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_glob.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
