#define MULLW \
	vpmullw zmm0, zmm1, zmm2    \
	vpmullw zmm3, zmm4, zmm5    \
	vpmullw zmm6, zmm7, zmm8    \
	vpmullw zmm9, zmm10, zmm11  \
	vpmullw zmm12, zmm13, zmm14 \
	vpmullw zmm15, zmm16, zmm17 \
	vpmullw zmm18, zmm19, zmm20 \
	vpmullw zmm21, zmm22, zmm23 \
	vpmullw zmm24, zmm25, zmm26 \
	vpmullw zmm27, zmm28, zmm29

TEXT ·teraAvx512Int16(SB), 7, $0
	MOVQ $50000, R9

loopInt16:
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	MULLW
	SUBQ $1, R9
	JNZ  loopInt16

	VZEROUPPER
	RET

#define MULLD \
	vpmulld zmm0, zmm1, zmm2    \
	vpmulld zmm3, zmm4, zmm5    \
	vpmulld zmm6, zmm7, zmm8    \
	vpmulld zmm9, zmm10, zmm11  \
	vpmulld zmm12, zmm13, zmm14 \
	vpmulld zmm15, zmm16, zmm17 \
	vpmulld zmm18, zmm19, zmm20 \
	vpmulld zmm21, zmm22, zmm23 \
	vpmulld zmm24, zmm25, zmm26 \
	vpmulld zmm27, zmm28, zmm29

TEXT ·teraAvx512Int32(SB), 7, $0
	MOVQ $50000, R9

loopInt32:
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	MULLD
	SUBQ $1, R9
	JNZ  loopInt32

	VZEROUPPER
	RET

#define MULLQ \
	vpmullq zmm0, zmm1, zmm2    \
	vpmullq zmm3, zmm4, zmm5    \
	vpmullq zmm6, zmm7, zmm8    \
	vpmullq zmm9, zmm10, zmm11  \
	vpmullq zmm12, zmm13, zmm14 \
	vpmullq zmm15, zmm16, zmm17 \
	vpmullq zmm18, zmm19, zmm20 \
	vpmullq zmm21, zmm22, zmm23 \
	vpmullq zmm24, zmm25, zmm26 \
	vpmullq zmm27, zmm28, zmm29

TEXT ·teraAvx512Int64(SB), 7, $0
	MOVQ $50000, R9

loopInt64:
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	MULLQ
	SUBQ $1, R9
	JNZ  loopInt64

	VZEROUPPER
	RET

#define MULDBL \
	vmulpd zmm0, zmm1, zmm2    \
	vmulpd zmm3, zmm4, zmm5    \
	vmulpd zmm6, zmm7, zmm8    \
	vmulpd zmm9, zmm10, zmm11  \
	vmulpd zmm12, zmm13, zmm14 \
	vmulpd zmm15, zmm16, zmm17 \
	vmulpd zmm18, zmm19, zmm20 \
	vmulpd zmm21, zmm22, zmm23 \
	vmulpd zmm24, zmm25, zmm26 \
	vmulpd zmm27, zmm28, zmm29

TEXT ·teraAvx512Double(SB), 7, $0
	MOVQ $50000, R9

loopDouble:
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	MULDBL
	SUBQ $1, R9
	JNZ  loopDouble

	VZEROUPPER
	RET

#define MULSNGL \
	vmulps zmm0, zmm1, zmm2    \
	vmulps zmm3, zmm4, zmm5    \
	vmulps zmm6, zmm7, zmm8    \
	vmulps zmm9, zmm10, zmm11  \
	vmulps zmm12, zmm13, zmm14 \
	vmulps zmm15, zmm16, zmm17 \
	vmulps zmm18, zmm19, zmm20 \
	vmulps zmm21, zmm22, zmm23 \
	vmulps zmm24, zmm25, zmm26 \
	vmulps zmm27, zmm28, zmm29

TEXT ·teraAvx512Single(SB), 7, $0
	MOVQ $50000, R9

loopSingle:
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	MULSNGL
	SUBQ $1, R9
	JNZ  loopSingle

	VZEROUPPER
	RET
