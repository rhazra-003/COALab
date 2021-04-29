.data 
message:  .asciiz "Name: "
newline:  .asciiz "\n"
rollCall:  .asciiz "Roll No: "
userName:  .space 30
userRoll:  .space 10

.text 
#Main function
main:
#Taking name as input from the user
li $v0, 8
la $a0, userName
li $a1, 30
syscall
#Taking roll as input from the user
li $v0, 8
la $a0, userRoll
li $a1, 10
syscall

#Printing name from the user
li $v0, 4
la $a0, message
syscall 
li $v0, 4
la $a0, userName
syscall

#Printing a newline
li $v0, 4
la $a0, newline
syscall 

#Printing roll from the user
li $v0, 4
la $a0, rollCall
syscall
li $v0, 4
la $a0, userRoll
syscall

#End of main function
li $v0, 10
syscall
