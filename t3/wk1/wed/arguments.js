const multipleArguments = (...args) => {
  if (args.length < 1) return 0
  return args.reduce( (acc, val) => acc * val)
}

multipleArguments(1, 2, 3, 4, 5, 6, 7)

console.log(multipleArguments(1, 2, 3, 4, 5, 6, 7))

// Don't alter the lines below
module.exports = {
	multipleArguments
}