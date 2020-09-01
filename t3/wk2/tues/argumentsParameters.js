// 01. Without declaring any new variables, functions, anything, 
//     pass any number of variables into
//     the sumAll function provided.
//     You should only be editing two things:
//          - the parameters in the sumAll declaration
//          - the arguments passed to a sumAll call
//     Keep an eye out for the lines marked with:
//          // <--- You can edit this line
//
//     Note that we said "pass any number of variables"
//     -- you can't control how many arguments we'll use 
//     when calling the sumAll function in the challenge tests.
//     So, your solution must be able to handle any number of arguments.

let aNumber = 99;
let moreNumbers = [1,-10, 34, 720];
let aCalculatedNumber = 10 * 5;
let anObjectOfNumbers = {first: 1, second: 2, third: 3}; 


function sumAll(...numbers){ // <--- You can edit this line
    let sum = 0;

    // Do NOT edit this loop. Sorry! ;) 
    for (let number of numbers) {
        sum += number;
    }

    return sum;
}

console.log(sumAll(aNumber, moreNumbers, aCalculatedNumber, anObjectOfNumbers)); // <--- You can edit this line






module.exports = { 
    sumAll,
    aNumber,
    moreNumbers,
    aCalculatedNumber,
    anObjectOfNumbers
};
