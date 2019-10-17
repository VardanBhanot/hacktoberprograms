import random

def find(searchList, element):
            if element in searchList:
                present = True
            else:
                present = False
            return present
        
def inputnumber(searchlist):
    while True:
        number=int(input("enter any number :"))
        if(number>100):
            print("out of range..!")
        elif(number<1):
            print("below the range..!")
        elif not find(searchlist, number):
            print("Out of the Grid ..!")
        else:
            break
    return number


for high_score in range(100):
    present = False
    tries=0
    #usig list for creating grid
    Grid=random.sample(range(1,101),36)
    for i in range(len(Grid)):
        if(i%6==0):
            print("\n")
        print(Grid[i],end="  ")
    print("\n")    
    number=inputnumber(Grid) #getting number from user to check wether it belongs within the range or not
    system_random=random.choice(Grid) #systm generate randum number from the Grid
    while(tries<5):
               if(number>system_random): 
                       print("Too Heigh")
                       print ("try guessing again")
                       number=inputnumber(Grid)
                       tries=tries+1
                       
               elif(number<system_random):
                       print("Too Low")  
                       print ("try guessing again")
                       number=inputnumber(Grid)
                       tries=tries+1
                       
               elif number == system_random:
                print ("congratulations !!! YOU GUESSED THE NO..... ")
                print()
                print("you have guessed the number within" , tries , "tries" )
                print()
                print (" High Score : " , high_score+1)
                print()
                break;
               else :
                    print ("you lost !!!" )
    answer = input("Do you want to play? \n Write Yes or No : ")
    if answer.upper() == 'yes'.upper():
        continue
    elif answer.upper() == 'no'.upper():
        print("OK! see you later")
        exit()
        break
    else:
        print("Don't Understand")
