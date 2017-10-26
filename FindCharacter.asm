
.data
prompt1: .asciiz "Enter a string (max 50 chars): "
prompt2: .asciiz "Enter a character: "
msg : .asciiz "\nNo. of times character appears = "
ustring: .space 50
.text
#prompt and get string input
li $v0, 4 # syscall 4 to print string of prompt 1
la $a0, prompt1 #load address of prompt1 into register $a0
syscall
li $v0, 8 #syscall 8 to read string of prompt 1
la $a0, ustring #load address of space stored in string into register $a0
li $a1, 50 #syscall 50 in this case used to see if $a1 contains value of user-chosen option
#           contains address of null-terminated string that is the message to user
syscall
#prompt and get the character
li $v0, 4 #syscall 4 to print string
la $a0, prompt2 #load address of prompt2 into register $a0
syscall
li $v0, 12 #use syscall 12 to read character from prompt 2
syscall
move $t0, $v0 #move the contents of $v0 to $t0
#iniitialize counter $t1
li $t1, 0 #counter
la $t2, ustring #address of string in t2
loop:
lb $t3, ($t2) #get current character
beq $t3, '\0', finish #if end of string, go to finish
bne $t3, $t0 , next #compare current char t3 with needed char in t0, if not equal go to next
#they are equal , increment count
addi $t1, $t1, 1 #$t1 =$t1+1
next:
add $t2, $t2, 1 #next address
b loop
finish:
#display the count  
li $v0, 4 #$using syscall 4 to print string
la $a0, msg #save adress of msg into register $a0
syscall
li $v0, 1 #syscall 1 to print an integer
move $a0, $t1 #move contents of $t1 to $a0
syscall
#exit
li $v0, 10 #syscall 10 to exit program
syscall
