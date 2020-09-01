function binarySearch(binaryArray, searchValue) {

  // ensure array is sorted for binary searches
  let sortedArray = binaryArray.sort((a,b) => a - b)

  let count = 0
  
  while (true) {

    // stop the loop if array is empty
    if (sortedArray.length < 1) break
    // get the midpoint by assessing if string is even or not
    let midpoint = (sortedArray.length % 2 === 0) ? sortedArray.length/2 : Math.floor(sortedArray.length/2)
    // increase the count
    count++
    // if the midpoint value is the search value, return it
    if (sortedArray[midpoint] === searchValue ) return [binaryArray.indexOf(searchValue), count]

    const half1 = sortedArray.slice(0,midpoint)
    const half2 = sortedArray.slice(midpoint,sortedArray.length)
    // reset the sortedArray with the new sliced array and start again
    sortedArray = (half1.includes(searchValue)) ? half1 : half2

  }
}

module.exports = {
  binarySearch
};

binaryArray = [1, 3, 7, 10, 14, 19, 31]
// binaryArray2 = [1, 3, 7, 10, 14, 19, 31, 99,120]

console.log(binarySearch(binaryArray, 14));
// console.log(binarySearch(binaryArray2, 31));

// binarySearch(binaryArray2, 10)

