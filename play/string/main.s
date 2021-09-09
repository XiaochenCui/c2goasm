"".main STEXT size=645 args=0x0 locals=0x120 funcid=0x0
	0x0000 00000 (main.go:5)	TEXT	"".main(SB), ABIInternal, $288-0
	0x0000 00000 (main.go:5)	MOVQ	(TLS), CX
	0x0009 00009 (main.go:5)	LEAQ	-160(SP), AX
	0x0011 00017 (main.go:5)	CMPQ	AX, 16(CX)
	0x0015 00021 (main.go:5)	PCDATA	$0, $-2
	0x0015 00021 (main.go:5)	JLS	631
	0x001b 00027 (main.go:5)	PCDATA	$0, $-1
	0x001b 00027 (main.go:5)	SUBQ	$288, SP
	0x0022 00034 (main.go:5)	MOVQ	BP, 280(SP)
	0x002a 00042 (main.go:5)	LEAQ	280(SP), BP
	0x0032 00050 (main.go:5)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0032 00050 (main.go:5)	FUNCDATA	$1, gclocals·c2998bae2a3d3e73644659ccc2a7cede(SB)
	0x0032 00050 (main.go:5)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0032 00050 (main.go:7)	MOVB	$0, ""..autotmp_12+71(SP)
	0x0037 00055 (main.go:7)	LEAQ	""..autotmp_12+71(SP), AX
	0x003c 00060 (main.go:7)	MOVQ	AX, ""..autotmp_10+112(SP)
	0x0041 00065 (main.go:7)	TESTB	AL, (AX)
	0x0043 00067 (main.go:7)	MOVB	$65, ""..autotmp_12+71(SP)
	0x0048 00072 (main.go:7)	MOVQ	""..autotmp_10+112(SP), AX
	0x004d 00077 (main.go:7)	TESTB	AL, (AX)
	0x004f 00079 (main.go:7)	JMP	81
	0x0051 00081 (main.go:7)	MOVQ	AX, "".origin_bs+232(SP)
	0x0059 00089 (main.go:7)	MOVQ	$1, "".origin_bs+240(SP)
	0x0065 00101 (main.go:7)	MOVQ	$1, "".origin_bs+248(SP)
	0x0071 00113 (main.go:8)	MOVQ	$0, (SP)
	0x0079 00121 (main.go:8)	MOVQ	AX, 8(SP)
	0x007e 00126 (main.go:8)	MOVQ	$1, 16(SP)
	0x0087 00135 (main.go:8)	PCDATA	$1, $1
	0x0087 00135 (main.go:8)	CALL	runtime.slicebytetostring(SB)
	0x008c 00140 (main.go:8)	MOVQ	24(SP), AX
	0x0091 00145 (main.go:8)	MOVQ	32(SP), CX
	0x0096 00150 (main.go:8)	MOVQ	AX, "".s+136(SP)
	0x009e 00158 (main.go:8)	MOVQ	CX, "".s+144(SP)
	0x00a6 00166 (main.go:9)	MOVQ	"".origin_bs+240(SP), CX
	0x00ae 00174 (main.go:9)	MOVQ	"".origin_bs+232(SP), AX
	0x00b6 00182 (main.go:9)	TESTQ	CX, CX
	0x00b9 00185 (main.go:9)	JHI	197
	0x00bb 00187 (main.go:9)	NOP
	0x00c0 00192 (main.go:9)	JMP	623
	0x00c5 00197 (main.go:9)	MOVB	$75, (AX)
	0x00c8 00200 (main.go:10)	MOVQ	"".s+136(SP), AX
	0x00d0 00208 (main.go:10)	MOVQ	"".s+144(SP), CX
	0x00d8 00216 (main.go:10)	MOVQ	AX, (SP)
	0x00dc 00220 (main.go:10)	MOVQ	CX, 8(SP)
	0x00e1 00225 (main.go:10)	PCDATA	$1, $0
	0x00e1 00225 (main.go:10)	CALL	runtime.convTstring(SB)
	0x00e6 00230 (main.go:10)	MOVQ	16(SP), AX
	0x00eb 00235 (main.go:10)	MOVQ	AX, ""..autotmp_14+104(SP)
	0x00f0 00240 (main.go:10)	LEAQ	type.string(SB), CX
	0x00f7 00247 (main.go:10)	MOVQ	CX, ""..autotmp_13+216(SP)
	0x00ff 00255 (main.go:10)	MOVQ	AX, ""..autotmp_13+224(SP)
	0x0107 00263 (main.go:10)	MOVQ	CX, "".~arg0+120(SP)
	0x010c 00268 (main.go:10)	MOVQ	AX, "".~arg0+128(SP)
	0x0114 00276 (main.go:10)	XORPS	X0, X0
	0x0117 00279 (main.go:10)	MOVUPS	X0, ""..autotmp_17+200(SP)
	0x011f 00287 (main.go:10)	LEAQ	""..autotmp_17+200(SP), AX
	0x0127 00295 (main.go:10)	MOVQ	AX, ""..autotmp_15+96(SP)
	0x012c 00300 (main.go:10)	TESTB	AL, (AX)
	0x012e 00302 (main.go:10)	MOVQ	"".~arg0+120(SP), CX
	0x0133 00307 (main.go:10)	MOVQ	"".~arg0+128(SP), DX
	0x013b 00315 (main.go:10)	MOVQ	CX, ""..autotmp_17+200(SP)
	0x0143 00323 (main.go:10)	MOVQ	DX, ""..autotmp_17+208(SP)
	0x014b 00331 (main.go:10)	TESTB	AL, (AX)
	0x014d 00333 (main.go:10)	JMP	335
	0x014f 00335 (main.go:10)	MOVQ	AX, fmt.a+256(SP)
	0x0157 00343 (main.go:10)	MOVQ	$1, fmt.a+264(SP)
	0x0163 00355 (main.go:10)	MOVQ	$1, fmt.a+272(SP)
	0x016f 00367 (main.go:10)	MOVQ	$0, fmt.n+72(SP)
	0x0178 00376 (main.go:10)	XORPS	X0, X0
	0x017b 00379 (main.go:10)	MOVUPS	X0, fmt.err+152(SP)
	0x0183 00387 (<unknown line number>)	NOP
	0x0183 00387 (main.go:10)	MOVQ	$0, fmt..autotmp_3+88(SP)
	0x018c 00396 (main.go:10)	XORPS	X0, X0
	0x018f 00399 (main.go:10)	MOVUPS	X0, fmt..autotmp_4+184(SP)
	0x0197 00407 ($GOROOT/src/fmt/print.go:274)	XORPS	X0, X0
	0x019a 00410 ($GOROOT/src/fmt/print.go:274)	MOVUPS	X0, ""..autotmp_9+168(SP)
	0x01a2 00418 ($GOROOT/src/fmt/print.go:274)	MOVQ	fmt.a+256(SP), AX
	0x01aa 00426 ($GOROOT/src/fmt/print.go:274)	MOVQ	fmt.a+264(SP), CX
	0x01b2 00434 ($GOROOT/src/fmt/print.go:274)	MOVQ	fmt.a+272(SP), DX
	0x01ba 00442 ($GOROOT/src/fmt/print.go:274)	MOVQ	os.Stdout(SB), BX
	0x01c1 00449 ($GOROOT/src/fmt/print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), SI
	0x01c8 00456 ($GOROOT/src/fmt/print.go:274)	MOVQ	SI, (SP)
	0x01cc 00460 ($GOROOT/src/fmt/print.go:274)	MOVQ	BX, 8(SP)
	0x01d1 00465 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, 16(SP)
	0x01d6 00470 ($GOROOT/src/fmt/print.go:274)	MOVQ	CX, 24(SP)
	0x01db 00475 ($GOROOT/src/fmt/print.go:274)	MOVQ	DX, 32(SP)
	0x01e0 00480 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x01e5 00485 ($GOROOT/src/fmt/print.go:274)	MOVQ	40(SP), AX
	0x01ea 00490 ($GOROOT/src/fmt/print.go:274)	MOVQ	48(SP), CX
	0x01ef 00495 ($GOROOT/src/fmt/print.go:274)	MOVQ	56(SP), DX
	0x01f4 00500 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, ""..autotmp_8+80(SP)
	0x01f9 00505 ($GOROOT/src/fmt/print.go:274)	MOVQ	CX, ""..autotmp_9+168(SP)
	0x0201 00513 ($GOROOT/src/fmt/print.go:274)	MOVQ	DX, ""..autotmp_9+176(SP)
	0x0209 00521 ($GOROOT/src/fmt/print.go:274)	MOVQ	""..autotmp_8+80(SP), AX
	0x020e 00526 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, fmt..autotmp_3+88(SP)
	0x0213 00531 ($GOROOT/src/fmt/print.go:274)	MOVQ	""..autotmp_9+168(SP), AX
	0x021b 00539 ($GOROOT/src/fmt/print.go:274)	MOVQ	""..autotmp_9+176(SP), CX
	0x0223 00547 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, fmt..autotmp_4+184(SP)
	0x022b 00555 ($GOROOT/src/fmt/print.go:274)	MOVQ	CX, fmt..autotmp_4+192(SP)
	0x0233 00563 (main.go:10)	MOVQ	fmt..autotmp_3+88(SP), AX
	0x0238 00568 (main.go:10)	MOVQ	AX, fmt.n+72(SP)
	0x023d 00573 (main.go:10)	MOVQ	fmt..autotmp_4+184(SP), AX
	0x0245 00581 (main.go:10)	MOVQ	fmt..autotmp_4+192(SP), CX
	0x024d 00589 (main.go:10)	MOVQ	AX, fmt.err+152(SP)
	0x0255 00597 (main.go:10)	MOVQ	CX, fmt.err+160(SP)
	0x025d 00605 (main.go:10)	JMP	607
	0x025f 00607 (main.go:10)	PCDATA	$1, $-1
	0x025f 00607 (main.go:10)	MOVQ	280(SP), BP
	0x0267 00615 (main.go:10)	ADDQ	$288, SP
	0x026e 00622 (main.go:10)	RET
	0x026f 00623 (main.go:9)	XORL	AX, AX
	0x0271 00625 (main.go:9)	PCDATA	$1, $0
	0x0271 00625 (main.go:9)	CALL	runtime.panicIndex(SB)
	0x0276 00630 (main.go:9)	XCHGL	AX, AX
	0x0277 00631 (main.go:9)	NOP
	0x0277 00631 (main.go:5)	PCDATA	$1, $-1
	0x0277 00631 (main.go:5)	PCDATA	$0, $-2
	0x0277 00631 (main.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x027c 00636 (main.go:5)	PCDATA	$0, $-1
	0x027c 00636 (main.go:5)	NOP
	0x0280 00640 (main.go:5)	JMP	0
	0x0000 64 48 8b 0c 25 00 00 00 00 48 8d 84 24 60 ff ff  dH..%....H..$`..
	0x0010 ff 48 3b 41 10 0f 86 5c 02 00 00 48 81 ec 20 01  .H;A...\...H.. .
	0x0020 00 00 48 89 ac 24 18 01 00 00 48 8d ac 24 18 01  ..H..$....H..$..
	0x0030 00 00 c6 44 24 47 00 48 8d 44 24 47 48 89 44 24  ...D$G.H.D$GH.D$
	0x0040 70 84 00 c6 44 24 47 41 48 8b 44 24 70 84 00 eb  p...D$GAH.D$p...
	0x0050 00 48 89 84 24 e8 00 00 00 48 c7 84 24 f0 00 00  .H..$....H..$...
	0x0060 00 01 00 00 00 48 c7 84 24 f8 00 00 00 01 00 00  .....H..$.......
	0x0070 00 48 c7 04 24 00 00 00 00 48 89 44 24 08 48 c7  .H..$....H.D$.H.
	0x0080 44 24 10 01 00 00 00 e8 00 00 00 00 48 8b 44 24  D$..........H.D$
	0x0090 18 48 8b 4c 24 20 48 89 84 24 88 00 00 00 48 89  .H.L$ H..$....H.
	0x00a0 8c 24 90 00 00 00 48 8b 8c 24 f0 00 00 00 48 8b  .$....H..$....H.
	0x00b0 84 24 e8 00 00 00 48 85 c9 77 0a 0f 1f 44 00 00  .$....H..w...D..
	0x00c0 e9 aa 01 00 00 c6 00 4b 48 8b 84 24 88 00 00 00  .......KH..$....
	0x00d0 48 8b 8c 24 90 00 00 00 48 89 04 24 48 89 4c 24  H..$....H..$H.L$
	0x00e0 08 e8 00 00 00 00 48 8b 44 24 10 48 89 44 24 68  ......H.D$.H.D$h
	0x00f0 48 8d 0d 00 00 00 00 48 89 8c 24 d8 00 00 00 48  H......H..$....H
	0x0100 89 84 24 e0 00 00 00 48 89 4c 24 78 48 89 84 24  ..$....H.L$xH..$
	0x0110 80 00 00 00 0f 57 c0 0f 11 84 24 c8 00 00 00 48  .....W....$....H
	0x0120 8d 84 24 c8 00 00 00 48 89 44 24 60 84 00 48 8b  ..$....H.D$`..H.
	0x0130 4c 24 78 48 8b 94 24 80 00 00 00 48 89 8c 24 c8  L$xH..$....H..$.
	0x0140 00 00 00 48 89 94 24 d0 00 00 00 84 00 eb 00 48  ...H..$........H
	0x0150 89 84 24 00 01 00 00 48 c7 84 24 08 01 00 00 01  ..$....H..$.....
	0x0160 00 00 00 48 c7 84 24 10 01 00 00 01 00 00 00 48  ...H..$........H
	0x0170 c7 44 24 48 00 00 00 00 0f 57 c0 0f 11 84 24 98  .D$H.....W....$.
	0x0180 00 00 00 48 c7 44 24 58 00 00 00 00 0f 57 c0 0f  ...H.D$X.....W..
	0x0190 11 84 24 b8 00 00 00 0f 57 c0 0f 11 84 24 a8 00  ..$.....W....$..
	0x01a0 00 00 48 8b 84 24 00 01 00 00 48 8b 8c 24 08 01  ..H..$....H..$..
	0x01b0 00 00 48 8b 94 24 10 01 00 00 48 8b 1d 00 00 00  ..H..$....H.....
	0x01c0 00 48 8d 35 00 00 00 00 48 89 34 24 48 89 5c 24  .H.5....H.4$H.\$
	0x01d0 08 48 89 44 24 10 48 89 4c 24 18 48 89 54 24 20  .H.D$.H.L$.H.T$ 
	0x01e0 e8 00 00 00 00 48 8b 44 24 28 48 8b 4c 24 30 48  .....H.D$(H.L$0H
	0x01f0 8b 54 24 38 48 89 44 24 50 48 89 8c 24 a8 00 00  .T$8H.D$PH..$...
	0x0200 00 48 89 94 24 b0 00 00 00 48 8b 44 24 50 48 89  .H..$....H.D$PH.
	0x0210 44 24 58 48 8b 84 24 a8 00 00 00 48 8b 8c 24 b0  D$XH..$....H..$.
	0x0220 00 00 00 48 89 84 24 b8 00 00 00 48 89 8c 24 c0  ...H..$....H..$.
	0x0230 00 00 00 48 8b 44 24 58 48 89 44 24 48 48 8b 84  ...H.D$XH.D$HH..
	0x0240 24 b8 00 00 00 48 8b 8c 24 c0 00 00 00 48 89 84  $....H..$....H..
	0x0250 24 98 00 00 00 48 89 8c 24 a0 00 00 00 eb 00 48  $....H..$......H
	0x0260 8b ac 24 18 01 00 00 48 81 c4 20 01 00 00 c3 31  ..$....H.. ....1
	0x0270 c0 e8 00 00 00 00 90 e8 00 00 00 00 0f 1f 40 00  ..............@.
	0x0280 e9 7b fd ff ff                                   .{...
	rel 3+0 t=25 type.string+0
	rel 3+0 t=25 type.*os.File+0
	rel 5+4 t=17 TLS+0
	rel 136+4 t=8 runtime.slicebytetostring+0
	rel 226+4 t=8 runtime.convTstring+0
	rel 243+4 t=16 type.string+0
	rel 445+4 t=16 os.Stdout+0
	rel 452+4 t=16 go.itab.*os.File,io.Writer+0
	rel 481+4 t=8 fmt.Fprintln+0
	rel 626+4 t=8 runtime.panicIndex+0
	rel 632+4 t=8 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok nosplit size=28 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	XORPS	X0, X0
	0x0003 00003 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0008 00008 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x000d 00013 (<autogenerated>:1)	TESTB	AL, (AX)
	0x000f 00015 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0012 00018 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x0017 00023 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 0f 57 c0 0f 11 44 24 10 48 8b 44 24 08 84 00 48  .W...D$.H.D$...H
	0x0010 8b 00 48 89 44 24 08 e9 00 00 00 00              ..H.D$......
	rel 24+4 t=8 os.(*file).close+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=24 type.[]interface {}+0
	rel 0+0 t=24 type.error+0
	rel 0+0 t=24 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 08 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·c2998bae2a3d3e73644659ccc2a7cede SRODATA dupok size=14
	0x0000 02 00 00 00 17 00 00 00 00 00 00 00 00 02        ..............
"".main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 b0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
