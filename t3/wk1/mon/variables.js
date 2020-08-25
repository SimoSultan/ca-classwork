// TO RUN THIS CODE LOCALLY YOU HAVE TO INSTALL 'prompt' through npm with 
// npm install 'prompt'

// to show blocking vs non blocking, prompt will block your server side code,
// essentially it will act like gets.chomp in ruby
// if you don't use it, then node will run line 38 before the user has actually inputted their age
// meaning it will just output 'You are not allowed!' before user has input code

// get the prompt node module
const prompt = require('prompt');

// basic JS ternary
var user = "Tom"
user === "Tom" ? console.log("Hello " + user) : console.log("Hello someone other than Tom")

// log the question to the user
console.log("How old are you?");

// initialize prompt module
prompt.start();

// ask the question and await the result
prompt.get('age', function (err, result) {
  if (err) { return onErr(err); }
  result.age >= 18 ? console.log("Welcome to the casino!") : console.log("You are not allowed!")
});

// error function for prompt module, can be used for custom erroring
function onErr(err) {
  console.log(err);
  return 1;
}



// var age
// age = process.stdin.read();
// age >= 18 ? console.log("Welcome to the casino!") : console.log("You are not allowed!")
