rev_num = 0
base = 1
def revers(num): 
    global rev_num 
    global base
    if(num > 0): 
        revers((int)(num / 10)) 
        rev_num += (num % 10) * base 
        base *= 10
    return rev_num 
n=int(input())
print(revers(n))