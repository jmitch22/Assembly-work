#create the arrays in the data segment
A: .word 0,1,2,3,4,5,6,7,8,9
B: .word 0,0,0,0,0,0,0,0,0,0

.text
#your code goes here
li $t0, 0 #index index = 0
la $t1, A #load address to base address of A
la $t2, B #load address to base address of B
li $t4, 9 #load number 9 in t4 $t4=9


loop:
bgt $t0, 9, end_loop #if index > 9 , end loop
lw $t3, ($t1) #$t3=load word from array A address pointed by $t1
sub $t3, $t4, $t3 # t3 = t4 - t3 i.e. t3 = 9 - t3
sw $t3, ($t2) #store value of t3 in pointer of B array
addi $t0, $t0, 1 #increment index++
addi $t1, $t1, 4 #increment pointer to A by 4 bytes since it takes 4 bytes
addi $t2, $t2, 4 #increment pointer to B by 4 bytes
b loop

end_loop:

#exit
