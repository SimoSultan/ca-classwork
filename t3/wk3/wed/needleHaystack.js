function findNeedle(haystack) {

  // find the row with the N in it and return the iterable
  // find the index of N in the array that it was found in
  let x, y

  for (let i = 0; i < haystack.length; i++) {
    if (haystack[i].includes('N')) {
      y = i
      break
    }
  }

  x = haystack[y].indexOf('N')
  return [y,x]

}


// Don't change this
module.exports = {
  findNeedle,
};






