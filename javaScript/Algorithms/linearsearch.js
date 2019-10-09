function linearSearch(array, item) {
    let index = -1   // Default case i.e Item not found
    array.forEach((element, i) => {
        if (element === item) {
            index = i
        }

    });
    if (index === -1) {
        return `${item} is not found`
    }
    return `${item} found at index ${index}`
}

console.log(linearSearch([1,4,5,6,7,3,9,13,65,34,77,43], 77))
