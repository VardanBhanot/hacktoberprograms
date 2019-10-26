# calculating number of digits 
def digits(x):
    a=0
    while(x!=0):
        x//=10
        a+=1
    return a
x=int(input())
print(digits(x))