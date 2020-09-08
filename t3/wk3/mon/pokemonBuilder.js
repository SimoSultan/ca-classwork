


function addPokemonToArr(num, callback, arr = []) {
  // set the url for the API call
  // get a random number between 1 and 151 to get the pokemon be want
  // add the number to the url
  let url = "https://pokeapi.co/api/v2/pokemon/";
  let pok = randomIntFromInterval(1,152)
  url = url + pok

  // get the JSON from the API and put the names and sprites into an array of objects
  // call the function recursively for the nums that have been set
  $.getJSON(url, (data) => {
    arr.push({name: data.name, img: data.sprites.front_default});
    if (num === arr.length) return callback(arr)
    return addPokemonToArr(num, callback, arr);
  });
}

// get a random number between 2 numbers
function randomIntFromInterval(min, max) {
  return Math.floor(Math.random() * (max - min + 1) + min);
}

// call the function and loop through the results appending each element as a list item in an UL
document.querySelector("#button").addEventListener("click", () => {
  addPokemonToArr(5, (data) => {
    data.forEach(pokemon => {
      $('#showPokemon').append(`<li>${pokemon.name}<img width="100" height="100" src="${pokemon.img}"></li>`);          });
  });
});
