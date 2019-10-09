/* Implemention of binary search algorithm in C++ */

#include <iostream>

using namespace std;

int binarySearch(int item_list[], int item) {
	int first = 0;
	int last = sizeof(item_list)-1;
	bool found = false;
	while (first <= last && !found) {
		int mid = (first + last)/2;
		if (item_list[mid] == item) {
			found = true;
		} else {
			if (item < item_list[mid]) { last = mid - 1; }
			else { first = mid + 1; }
		}
	}
	return found;
}

int main()
{
    // Examples of use
    int arrayOne[] = {1,2,3,5,8};
    cout << binarySearch(arrayOne, 6) << endl;
    int arrayTwo[] = {1,2,3,5,8};
    cout << binarySearch(arrayTwo, 5) << endl;
}
