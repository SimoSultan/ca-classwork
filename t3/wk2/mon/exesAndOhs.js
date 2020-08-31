const exesAndOhs = (string) => {
  let x = (string.toLowerCase().match(/x/g)||[]).length
  let o = (string.toLowerCase().match(/o/g)||[]).length
  return x == o
}


console.log(exesAndOhs("ooxx"));
console.log(exesAndOhs("oOxXxoX"));


// Leave this line
module.exports = {exesAndOhs};

