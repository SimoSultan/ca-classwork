nth_fibonacci = (n) => {
  let fib = []
  fib[0] = 0
  fib[1] = 1
  
  for (i = 2; i <= n; i++) {
    fib[i] = fib[i - 2] + fib[i - 1]  
  }

  return fib[n]
}
console.log(nth_fibonacci(0));
console.log(nth_fibonacci(3));
console.log(nth_fibonacci(6));
