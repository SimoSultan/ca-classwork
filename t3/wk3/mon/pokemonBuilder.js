


function addPokemonToArr(num, callback, arr = []) {
  let url = "https://pokeapi.co/api/v2/pokemon/";
  let pok = randomIntFromInterval(1,152)

  url = url + pok

  $.getJSON(url, (data) => {
    arr.push({name: data.name, img: data.sprites.front_default});
    if (num === arr.length) return callback(arr)
    return addPokemonToArr(num, callback, arr);
  });
}

function randomIntFromInterval(min, max) { // min and max included 
  return Math.floor(Math.random() * (max - min + 1) + min);
}

document.querySelector("#button").addEventListener("click", () => {
  addPokemonToArr(5, (data) => {

    data.forEach(pokemon => {
        $('#showPokemon').append(`<li>${pokemon.name}<img width="100" height="100" src="${pokemon.img}"></li>`);          });
  
  });
});
