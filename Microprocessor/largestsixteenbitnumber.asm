MOV BX,1000H
MOV CL,[BX]
INC BX
MOV AX,[BX]
DEC CL
BACK: INC BX
INC BX
CMP AX,[BX]
JNC NEXT
MOV AX,[BX]
NEXT: DEC CL
JNZ BACK
MOV [1020H],AX
HLT
