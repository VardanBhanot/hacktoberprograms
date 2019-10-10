"""
Question:
Give a N*N square matrix, return an array of its anti-diagonals. Look at the example for more details.
For Example:
If the matrix is    

1 2 3
4 5 6
7 8 9
The output should Return the following :
[ 
  [1],
  [2, 4],
  [3, 5, 7],
  [6, 8],
  [9]
]
i.e print the elements of array diagonally.
Note: The input array given is in single line and you have to output the answer in one line only.
Input:
The first line contains an integer T, depicting total number of test cases. 
Then following T lines contains an integer N depicting the size of square matrix and next line followed by the value of array.
Output:
Print the elements of matrix diagonally in separate line.
Constraints:

1 ≤ T ≤ 30
1 ≤ N ≤ 20
0 ≤ A[i][j] ≤ 9

Example:
Input:
2
2
1 2 3 4
3
1 2 3 4 5 6 7 8 9
Output:
1 2 3 4
1 2 4 3 5 7 6 8 9

Source:https://practice.geeksforgeeks.org/problems/print-diagonally/0
"""

#Solution
for t in range(int(input())):
    n=int(input())
    a=list(map(int,input().split()))
    x=2*n-1
    ind=0
    pind=0
    flag=0
    while(x):
        while True:
            if(ind>n*n-1):
                break
            if(ind==n*n-1):
                print(a[ind])
            else:
                print(a[ind],end=" ")
            if(pind>=n-1):
                flag=1
            if(ind%n)==0 and flag!=1:
                ind=pind+1
                pind=ind
                break
            elif(flag==1 and ind+n-1>=n*n-1):
                ind=pind+n
                pind=ind
                break
            else:
                ind+=n-1
        x-=1
