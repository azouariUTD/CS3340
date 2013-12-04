
.text

sameNumberValidation:
	srl $t1 , $a0, 12 #Extract the first number from the left

	srl $t2 , $a0 , 8 
	andi $t2, 0x0F #Extract the second number from the left
	
	srl $t3 , $a0 , 4
	andi $t3 , 0xF #Extract the third number from the left

	add  $t4 , $zero , $a0
	andi $t4 , 0xF #Extract the fourth number from the left

	beq $t1 , $t2 , repetetiveNumbers
	beq $t2 , $t3 , repetetiveNumbers
	beq $t3 , $t1 , repetetiveNumbers
	beq $t4 , $t3 , repetetiveNumbers
	beq $t4 , $t2 , repetetiveNumbers
	beq $t4 , $t1 , repetetiveNumbers
	
	li $v0 , 1
	jr $ra


repetetiveNumbers:
        beq $a3 , 1 , exitSameNumberValidation
	la $a0 , repetetiveNumberMsg #load address of userInput into $a0
	li $v0 , 4 	             #Print String
	syscall
	
	
exitSameNumberValidation:
        li $v0 , 0   #$v0 = 0 means failure
	jr $ra
