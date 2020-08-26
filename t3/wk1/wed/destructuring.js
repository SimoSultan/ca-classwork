/*
 taking the below variable, destructure the nested heroes and assign their
 heros to their respective variables.
*/
let heros = { marvel: { ironman: "New York", thor: "Asgard" }, dc: {batman: "Gotham", superman: "Krypton"}};

// let { marvel: { ironman, thor }, dc: { batman, superman } } = heros
let { marvel: { ironman, thor } } = heros
let { dc: { batman, superman } } = heros

console.log(ironman);
console.log(thor);
console.log(batman);
console.log(superman);

/* 
Use destructuring and the Rest operator to assign the marvel villains(Thanos and
Venom) into their separate variables, and place the DC villains(Bane, The Riddler) into 
a variable called others.
*/
let villains = ["Thanos", "Venom", "Bane", "The Riddler"]

let [ thanos, venom, ...others] = villains

console.log(Thanos);
console.log(Venom);
console.log(others);
/*
Because there are always more villains, as a final check... 
combine the 2 arrays using the spread operators
*/
let villains2 = ["Green Goblin", "King Cobra", "Kingpin"]

let combinedArr = [...villains, ...villains2]

console.log(combinedArr);

module.exports = {
    ironman, thor, batman, superman, Thanos, Venom, others, combinedArr
}


