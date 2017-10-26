import math
binary = input('Enter an 8 bit binary number consisting of 0 and 1: ')


def binary2decimal(binary):
    number = 0
    for x in binary:
        x = int(x)
        N=7
        number += x*(2**N)
        N=N-1
    print("The Decimal value of " ,end="")
    print(binary,end="")
    print(" is ",end="")
    print(number)
    return;
binary2decimal(binary)

integer = int(input('Enter an integer between 0 and 255:'))
print("The binary representation of ",end="")
print(integer,end="")

def decimal2binary(integer):
    listt=[]
    while(integer > 0):
        remainder = integer % 2
        listt.append(remainder)
        integer = math.floor(integer/2)
    print(" is ",end="")
    for i in reversed(listt):
        print(i,end="")
    return;
    
decimal2binary(integer)
    
