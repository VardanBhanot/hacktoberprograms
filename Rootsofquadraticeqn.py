import math
def Roots( a, b, c): 
    if a == 0: 
        print("Invalid parameters") 
        return -1
    d = b*b- 4*a*c 
    sqrt = math.sqrt(abs(d)) 
      
    if d > 0: 
        print("Roots are real and different ") 
        print((-b + sqrt)/(2*a)) 
        print((-b - sqrt)/(2*a)) 
    elif d == 0: 
        print("Roots are real and same") 
        print(-b/(2*a)) 
    else: #d<0 
        print("Roots are complex") 
        print(- b/(2*a) , "+ i",sqrt) 
        print(- b/(2*a) , "- i", sqrt) 
a,b,c=input().split(" ") # input space seperated values of parameters of quadratic equation
a=int(a)
b=int(b)
c=int(c)
print(Roots(a,b,c))