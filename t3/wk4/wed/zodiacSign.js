function getSign(input) {

  date = new Date(input);


  console.log(date);
  return "Invalid Date"
}

module.exports = getSign;

const input ="2020-09-16"

getSign(input)

// document.addEventListener.('click', () => {
//   let input = document.getElementById('when').value
//   let result = getSign(input)
//   document.getElementById('star-sign').textContent = result
// })