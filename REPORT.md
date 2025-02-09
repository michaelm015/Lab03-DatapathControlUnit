## Section 1
### Instructions Being Tested
Test 1: ADD <br/>
Test 2: OR <br/>
Test 3: ADD <br/>
Test 4: SUB <br/>
Test 5: SLT <br/>
Test 6: SLTU <br/>
Test 7: ADDI <br/>
Test 8: LW <br/>
Test 9: SW <br/>
Test 10: BR <br/>

## Section 2
### DIfferences between ADD and ADDI
reg_dst: Set to 1 for ADD and 0 for ADDI. This is because of the differences in how the destination register is defined. <br/>
alu_src: Set to 0 for ADD and 1 for ADDI. In ADD, both operands are from registers while in ADDI the second operand is an immediate value. <br/>
