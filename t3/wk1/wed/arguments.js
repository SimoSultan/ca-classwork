const multipleArguments = (...args) => {
  if (args.length < 1) return 0
  return args.reduce( (acc, val) => acc * val)

  // O is gonna be the initial value of acc before the first iteration is started
  // how does 0 get returned with no args?
  // I think it is because reduce function returns acc itself if the variable is []
  // return args.reduce( (acc, val, i) => i === 0 ? val : acc * val, 0)
}

multipleArguments(1, 2, 3, 4, 5, 6, 7)

console.log(multipleArguments(1, 2, 3, 4, 5, 6, 7))

// Don't alter the lines below
module.exports = {
	multipleArguments
}