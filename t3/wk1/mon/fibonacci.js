nth_fibonacci = (n) => {
  
  // create an array and set the first 2 fib numbers
  let fib = []
  fib[0] = 0
  fib[1] = 1
  
  // add the fib numbers up to the required num the user wants
  for (i = 2; i <= n; i++) {
    fib[i] = fib[i - 2] + fib[i - 1]  
  }

  // return the fib number the user wants
  return fib[n]
}

console.log(nth_fibonacci(0));
console.log(nth_fibonacci(3));
console.log(nth_fibonacci(6));


