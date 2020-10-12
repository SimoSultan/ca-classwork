function shortestWalk(walk) {
  let opposites = {
    SOUTH: "NORTH",
    NORTH: "SOUTH",
    WEST: "EAST",
    EAST: "WEST"
  }

  for (let i = 0; i < walk.length; i++) {
    // loop through the walk array and look at the current direction
    // get the opposite value of the current direction
    // remove the direction we are look from the walk array
    // check if the opposite is in the walk array
      // if it is. get the index and remove it
      // else move on to next element in array 
    const direction = walk[i];
    const opp = opposites[direction]
    let currIndex = walk.indexOf(direction)
    if (walk.includes(opp)) {
      if (currIndex > -1) walk.splice(currIndex,1)
      let oppIndex = walk.indexOf(opp)
      if (oppIndex > -1) walk.splice(oppIndex,1)
      i--
    }
  }
  return walk
}
// let result = shortestWalk(["SOUTH","NORTH", "SOUTH", "SOUTH", "EAST", "WEST","NORTH", "WEST"]) // => ["SOUTH","WEST"]

// let result = shortestWalk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) // => ["WEST"]
// let result = shortestWalk(["NORTH", "SOUTH", "EAST", "WEST"]) // => []
// console.log(result);

module.exports = shortestWalk