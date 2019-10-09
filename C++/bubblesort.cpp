#include <bits/stdc++.h>
using namespace std;

void swap(int *a, int *b) {
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

void BubbleSort(int a[], int n) {
    for(int j=0;j<n;j++) {
        for(int i=0;i<n-1;i++) {
            if(a[i] > a[i+1]) {
                swap(&a[i], &a[i+1]);
            }
        }
    }

    for(int k=0;k<n;k++) { cout << a[k] << " "; }
}

int main() {

    int arr[] = {5,4,1,2,3};
    int n = 5;
    BubbleSort(arr, n);
    return 0;
}
