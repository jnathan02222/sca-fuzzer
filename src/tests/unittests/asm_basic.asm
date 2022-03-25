.intel_syntax noprefix
LEA R14, [R14 + 40] # instrumentation
MFENCE # instrumentation
.test_case_enter:

.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:

  # line with a comment   
NOP # no operands
DIV RBX  # one operand
ADD RAX, RAX # two operands
AND RAX, 0b0111111000000 # immediate value - binary
AND RAX, 42 # immediate value - decimal
AND RAX, 0xfa # immediate value - hex
ADD RAX, -1 # immediate value - negative
ADD RDI, R14  # reserved register
neg rax  # lowercase
MOV RAX, qword ptr [R14]  # load - simple addressing
MOV RAX, qword ptr [R14 + RBX]  # load - two parts
MOV RAX, qword ptr [R14 + RBX + 8]  # load - three parts
MOV RAX, qword ptr [R14 + RBX]  # store
LOCK ADC dword ptr [R14 + RBX], EAX  # lock prefix
LOCK REX SBB byte ptr [R14 + RBX], SIL # lock rex prefix
ADD RAX, RAX # instrumentation

MOV RDI, RDI # multiple matches


JMP .bb_main.1 
  .bb_main.1:
      AND RDI, 0b0111111000000 # indentation
     CMP qword ptr [ R14 + RDI ] , 59   # extra spaces
    AND RDI, 0b0111111000000 # instrumentation
    AND EDI, dword ptr [R14 + RDI] 
    AND RSI, 0b0111111000000 # instrumentation
    CMP RBX, qword ptr [R14 + RSI] 
    AND RSI, 0b0111111000000 # instrumentation
    REX CMPXCHG byte ptr [R14 + RSI], SIL 

.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
LEA R14, [R14 - 40] # instrumentation
