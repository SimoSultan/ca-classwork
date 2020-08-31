const commonCharacters = (string1, string2) => {

  // gets a unique set of characters from each string, also downcasing and removing white space as well
  let set1 = new Set(string1.toLowerCase().replace(/\s/g, ""))
  let set2 = new Set(string2.toLowerCase().replace(/\s/g, ""))

  let arr = []

  // this if statement just chooses the set with the least characters in it
  // speeding up the for loop ever so slightly
  if (set1.length < set2.length) {
    for (const letter of set1) {
      if (set2.has(letter)) arr.push(letter)
    }
  } else {
    for (const letter of set2) {
      if (set1.has(letter)) arr.push(letter)
    }

  }

  // join the array together into a string
  return arr.join('');
}

module.exports = {commonCharacters}

commonCharacters("efg", "feg") // "efg"
commonCharacters("We are both dragon energy", "I am God's vessel") // "eaodg"
commonCharacters("Alright alright alright", "")  // ""