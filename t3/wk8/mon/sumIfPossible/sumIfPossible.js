function sumIfPossible(arr) {
  let skip = 0
  let sum = 0

  for (let i = 0; i < arr.length; i++) {
    const element = arr[i];
    if (typeof(element) !== "number") {
      skip++ 
      continue
    }
    sum += Number(element)
  }

  return {sum, skip}
}

// const arr = [12, 43, 73, 2, 98, 4, -4, 56];    // => {sum: 284, skip: 0}

// const arr = ["number", 234, 34, "string", -9];   // => {sum: 259, skip: 2}

// const arr = [true, false, null, 0, "", {}];   // => {sum: 0, skip: 5}
// let result = sumIfPossible(arr)

console.log(result);