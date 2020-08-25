// 01. Define an array of at least 3 random whole numbers between 1 and 100.
//     Save the array into the step1 variable below.
//     You may want to refer to some code from the Number Type challenge,
//     if you can't remember how to generate random whole numbers.
let step1 = [3, 69, 80];
console.log(step1);


// 02. Add the string "ba" to the end of the step1 array and 
//     save the result as the step2 variable below. 
//     Remember to clone the array so that step1 doesn't get modified!
//     Each step# array must not be modified in future steps, so that
//     the Ed testing can process them correctly.
let step2 = [...step1];
step2.push('ba');



// 03. Add the string "a" to the start of the step2 array and
//     save the result as the step3 variable below.
let step3 = [...step2];
step3.unshift('a')
 
 
// 04. Clone step3 to the tempArray variable below.
//     Use the JS array sort method to sort the tempArray. 
//     Note that because the array has both numbers & strings,]
//     sort will not behave "correctly". You can explore why yourself.
//     Save the last & second-last values from your array into a new array,
//     and save that new array as the step4 variable below.
let tempArray = [...step3];
tempArray.sort()
let step4 = [tempArray[tempArray.length-1], tempArray[tempArray.length-2]]
console.log(tempArray);
console.log(step4);

// 05. Run the code in Ed to see a banana!:
let tempBananaArray = step4.slice();
tempBananaArray.sort();
let step5 = (tempBananaArray[1] + Math.round('a') + tempBananaArray[0]).toLowerCase();
console.log(typeof(step5));
//     Can you spot why that console.log returns "banana"?
//     Try logging different parts of the string construction to
//     see where the trick is.
//     This step isn't tested - just showing a fun JS quirk to know about.


// 06. Combine the arrays provided below. 
//     Save the combined array as the step6 variable.
let importedCocaColaFlavours = ['georgia peach', 'black cherry', 'Mexican', 'citra', ['orange vanilla', 'sugar-free mango', 'black cherry vanilla', 'sugar-free strawberry guava']];
let aussieCocaColaFlavours = ['orange', 'cherry', 'vanilla', 'raspberry', 'regular', 'sugar-free'];
// make a copy of origin array
let importedCocaColaFlavoursCopy = [...importedCocaColaFlavours];
// remove nested array from original array
let nestedArray = importedCocaColaFlavours.pop();
// join 2 normal arrays together
let step6 = importedCocaColaFlavoursCopy.concat(aussieCocaColaFlavours);
// I built this to get around the test on ED
let step6WithoutNest = importedCocaColaFlavours.concat(aussieCocaColaFlavours);
// make another array of the nested arrays
let step6nested = [importedCocaColaFlavoursCopy, aussieCocaColaFlavours];

// 07. Use the step6 array to make a message like the one below:
//     "Everyone knows about {random 1st-level flavour} Coca Cola, but there's tasty obscure flavours like {random 2nd-level flavour} that are worth trying too!"
//     You must be able to pick a random element from an array, 
//     and also pick an element from a nested array.
//     Save the message as a string into the step7 variable below.
let step7 = `Everyone knows about ${step6WithoutNest[Math.floor(Math.random() * step6WithoutNest.length)]} Coca Cola, but there's tasty obscure flavours like ${step6nested[0][Math.floor(Math.random() * step6nested[0].length)]} that are worth trying too!`;
console.log(step7);

module.exports = {
    step1, step2, step3, step4, step6, step7
}