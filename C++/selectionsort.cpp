#include <bits/stdc++.h>
using namespace std;
void selectionSort(int a[], int n) {
    int minElement, minIndex, temp;
    for(int i=0;i<n;i++) {
        minElement = a[i]; // let the first element be the least element
        minIndex = i; // let the index of the minimum element be minIndex

        for(int j=i+1;j<n;j++) {
            if(a[j] < minElement) {
                minElement = a[j];
                minIndex = j;
            }
        }

        // swapping
        temp = a[i];
        a[i] = a[minIndex];
        a[minIndex] = temp;
    }
    for(int i=0;i<n;i++) {
        cout << a[i] << " ";
    }
}
int main() {
    int a[] = {10, 9, 4, 5, 2, 1};
    int n = sizeof(a)/sizeof(a[0]);

    selectionSort(a, n);
    return 0;
}
