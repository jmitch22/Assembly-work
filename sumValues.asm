# Assembly-work
#Write a program that sums the values in array A

.data
#create the array and space for the sum in memory
A: .word 0,1,2,3,4,5,6,7,8,9
sum: .word 0

.text
#your code goes here
li $t0, 0 # index  $t0=0
la $t1, A #ptr to base address of A
li $t2, 0 #sum $t2 = 0


loop:
bgt $t0, 9, end_loop #if index > 9 , end loop
lw $t3, ($t1) #load the word from address pointed by $t1
add $t2, $t2, $t3 #add contents of t3 to t2 i.e sum = sum + A[i]
addi $t0, $t0, 1 #increment index++
addi $t1, $t1, 4 #increment pointer by 4 bytes since int takes 4 bytes
b loop            ##  unconditional branch to program label target loop

end_loop:

sw $t2, sum #store the result in sum
