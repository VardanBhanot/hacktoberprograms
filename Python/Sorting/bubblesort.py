def bubbleSort(arr):
	n = len(arr)
	for i in range(n):
		for j in range(0, n-i-1):
			if arr[j] > arr[j+1] :
				arr[j], arr[j+1] = arr[j+1], arr[j]

# Code to print the list 
def printList(arr): 
	for i in range(len(arr)):		 
		print(arr[i],end=" ") 
	print() 

# Driver code 
if __name__ == "__main__":
    arr = [12, 11, 13, 5, 6, 7] 
    print ("Input array: ") 
    printList(arr) 
    bubbleSort(arr) 
    print("Sorted array is: ") 
    printList(arr) 
