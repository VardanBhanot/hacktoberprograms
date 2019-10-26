# -*- coding: utf-8 -*-
"""
Created on Fri Oct 25 14:50:34 2019

@author: 91811
"""

def fibonacci(x):
    if(x<0):
        print("incorrect input")
    elif (x==0):
        return 0
    elif(x==1):
        return 1
    else:
        return fibonacci(x-1)+fibonacci(x-2)
a=int(input())
print(fibonacci(a))