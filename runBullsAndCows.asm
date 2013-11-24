	.text
	.globl main

	.include "generateRandomNumber.asm"
	.include "getUserInput.asm"

main:
	jal generateRandomNumber
	jal getUserInput
	
	
	

endOfProgram:
	li $v0 , 10
	syscall


#Please enter all the messages of all the files here
#Convention all messages should be grouped by file name
	.data
#getUserInput.asm
userInput: .asciiz   "\nPlease enter a positive number between 0000 and FFFF (4-DIGIT): "

