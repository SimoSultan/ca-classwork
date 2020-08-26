function whatDoingToday(day){

  let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

  if (typeof(day) != "String") {
    day = days[day-1]
  }

  switch (day) {
    case "Monday":
    case "Tuesday":
    case "Wednesday":
      return "Learning at Coder Academy";
    case "Thursday":
    case "Friday":
      return "Reviewing lessons from the week";
    case "Saturday":
    case"Sunday":
      return "It is the weekend!";
    default:
      return "That is not a valid day";
  }

}
// What day is it today?
let day = new Date().getDay();
console.log(whatDoingToday(day))

module.exports = {whatDoingToday}


// // THIS IS THE CODE THAT PASSES ON ED THOUGH

// function whatDoingToday(day){

//   // let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

//   // if (typeof(day) != "String") {
//   //   day = days[day-1]
//   // }

//   // console.log(day);

//   switch (day) {
//     case "Monday":
//     case "Tuesday":
//     case "Wednesday":
//       return "Learning at Coder Academy";
//     case "Thursday":
//     case "Friday":
//       return "Reviewing lessons from the week";
//     case "Saturday":
//     case"Sunday":
//       return "It is the weekend!";
//     default:
//       return "That is not a valid day";
//   }



// }
// // What day is it today?
// // let day = new Date().getDay();
// let day = "Wednesday";
// console.log(whatDoingToday(day))

// module.exports = {whatDoingToday}