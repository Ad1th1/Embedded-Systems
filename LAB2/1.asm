; finding sum of n numbers using mla
; use sum = n*(n+1)/2
; mla = n*n + n

	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x40001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, code, readonly
	EXPORT Reset_Handler
	ENTRY
Reset_Handler
	LDR R0,=NUM1
	LDR R1,[R0]
	MLA R2,R1,R1,R1
	LSRS R2,#1
	LDR R3,=SUM
	STR R2,[R3]

STOP
	B STOP
NUM1 DCD 0XFFFF
	AREA mydata, DATA, READWRITE
SUM DCD 0
	END
	
