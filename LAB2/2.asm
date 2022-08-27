; to find gcd(common divisor) of two numbers by repeated subtraction and storing in R0 

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
	LDR R1,=NUM2
	LDR R0,[R0]
	LDR R1,[R1]

UP 	CMP R0,R1
	BEQ EXIT
	SUBHI R0,R1
	SUBLO R1, R0
	B UP

EXIT 
	LDR R2, =GCD
	STR R0,[R2]

STOP
	B STOP
NUM1 DCD 0X2
NUM2 DCD 0X5
	AREA mydata, DATA, READWRITE
GCD DCD 0
	END
	
