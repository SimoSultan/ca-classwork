/*
Taking the below Array & the learning from the lesson you need to:
 - flatten it,
 - Times it by 2
 - find the average
 */
let arr = [[28, 50, 33],[23,33,55,70],[1]]

let flattenedArr = arr.flat()

// let sum = flattenedArr.reduce( (acc, val) => acc + val )
// console.log(sum);
let averagedArr = (flattenedArr.reduce( (acc, val) => acc + val )) / flattenedArr.length

console.log(averagedArr);

module.exports = {
    flattenedArr, averagedArr, arr
}