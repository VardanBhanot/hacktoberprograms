function binarySearch(list, item) {
    var min = 0
    var max = list.length - 1
    var mid
    while (min <= max) {
        mid = Math.floor((min + max) / 2)
        if (list[mid] === item) {
            return `${item} found at index ${mid}`
        }
        else {
            if (item < list[mid]) {
                max = mid - 1
            }
            else {
                min = mid + 1
            }
        }
    }
    return `${item} is not in list`
}

console.log(binarySearch([1,2,3,4,5,6,7,8,9], 3))
