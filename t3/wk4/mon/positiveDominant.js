function positiveDominant(array) {
  // create a pos and neg array
  let pos = []
  let neg = []
  // loop over the array, adding unique numbers only to their respective arrays
  array.forEach(element => {
    (element > 0)
    ? (pos.includes(element)) ? "" : pos.push(element)
    : (neg.includes(element)) ? "" : neg.push(element) 
  });
  // compare their lengths
  return pos.length > neg.length
}

// Don't change this
module.exports = {
  positiveDominant
}


let arr = [1,2,3,-1,-2];
console.log(positiveDominant(arr));

let arr2 = [1,2,-1,-2,-3];
console.log(positiveDominant(arr2));

let arr3 = [1,1,1,1,-1,-2];
console.log(positiveDominant(arr3));

let arr4 = [-1,-1,-1,-1,1,2];
console.log(positiveDominant(arr4));