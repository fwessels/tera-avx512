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
	MOVQ $25000, R9

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
