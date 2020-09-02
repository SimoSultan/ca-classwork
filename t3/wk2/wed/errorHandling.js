function learnErrors(x) {
  try {
    if(x == "") throw "empty";
    if(isNaN(x)) throw "not a number";
    // randomFunc
    if(x < 5) throw "too low";
    if(x > 10) throw "too high";
    // End of the TRY Block.
  }
  catch(err) {
    // This received the error passed from the try block!
    // we received a block which includes an error type name, and an error message
    console.log("The error message's name is", err.name);
    console.log("The error message is", err.message);
    console.log("This is the whole error block")
    console.log("================")
    console.log(err)
    console.log("================")
    // End of the CATCH Block
  }
  finally {
    console.log("This will happen regardless of the outcome");
    // End of the FINALLY Block
  }

// This is outside of the Try / Throw/ Catch block and we no longer
//  have access to the Error
//  console.log(err)

  // the execution of the function is going to continue now
}

const input = "3"
learnErrors(input)