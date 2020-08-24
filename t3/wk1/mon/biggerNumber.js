
function largest_number(num1, num2) {

  if (!Number.isInteger(num1)) return `${num1} is not a number`
  if (!Number.isInteger(num2)) return `${num2} is not a number`
  
  if (num1 === num2) return "Numbers are equal"
  num = num1 < num2 ? num2 : num1

  return num
}

console.log(largest_number(100,150)); 
console.log(largest_number(100,100)); 
console.log(largest_number(100,"test")); 