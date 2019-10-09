function bubbleSort(arr) {
    var isSwapping
    for (let i = arr.length; i > 0; i--) {
        isSwapping = true
        for (let j = 0; j < i-1; j++) {
            if (arr[j] > arr[j + 1]) {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
                isSwapping = false
            }
        }
        if(isSwapping) break    // For optimization(exit from loop if there is nothing to swap)
    }
    return arr
}

console.log(bubbleSort([55,23,76,1,20,36]))
