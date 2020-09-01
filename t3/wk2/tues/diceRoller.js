function diceRoller(num) {
  // return a random number between 1 and any number
  // using ceil incase the number is 0.1 that it will go to 1 instead of 0
  return Math.ceil(Math.random() * Math.floor(num));

}