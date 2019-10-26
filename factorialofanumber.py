# -*- coding: utf-8 -*-
"""
Created on Fri Oct 25 14:38:10 2019

@author: 91811
"""

def factorial(x):
    if (x==1 or x==0):
        return 1
    else:
        return x * factorial(x - 1);
a=int(input())
print(factorial(a))   