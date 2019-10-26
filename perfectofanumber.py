# -*- coding: utf-8 -*-
"""
Created on Fri Oct 25 16:14:18 2019

@author: 91811
"""

def Perfect( x ): 
    sum = 1
    a = 2
    while a * a <= x: 
        if x % a == 0: 
            sum = sum + a + x/a 
        a += 1
     if (sum == x and x!=1)
         return TRUE
     else:
         return False
n=int(input())
print(Perfect(n))