function remove(items, callback, removed =[]) {

  for (let i = 0; i < items.length; i++) {
    const element = items[i];
    if (removerFunction(element)) {
      removed.push(element)
      items.splice(i, 1)
      i--
    }
  }
  
  return removed
}

function removerFunction(item) {
  return (item.toLowerCase().charAt(0) === "t") ? true : false
}

module.exports = {remove, removerFunction};



let people = ["tanya", "sue", "john", "garret"];
let removed = remove(people, removerFunction) ; // should remove "tanya" from people and return it in an array
console.log(people);  // should log: ["sue", "john", "garret"]
console.log(removed); // should log: ["tanya"]