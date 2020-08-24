// get the prompt node module
const prompt = require('prompt');

// basic JS ternary
var user = "Tom"
user === "Tom" ? console.log("Hello " + user) : console.log("Hello someone other than Tom")

// initialize prompt module
prompt.start();
// log the question to the user
console.log("How old are you?");

// ask the question and await the result
prompt.get('age', function (err, result) {
  if (err) { return onErr(err); }
  result.age >= 18 ? console.log("Welcome to the casino!") : console.log("You are not allowed!")
});

// error function for prompt module
function onErr(err) {
  console.log(err);
  return 1;
}