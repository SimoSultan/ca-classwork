const express = require('express')
const router = express.Router()
const {
  getPokemons,
  getPokemon,
  makePokemon,
  removePokemon,
  changePokemon
} = require('../controllers/Pokemons');

// Returns all Pokemons
router.get('/', getPokemons);

// Returns one Pokemon with given id
router.get('/:id', getPokemon);

// Creates a new Pokemon
router.Pokemon('/', makePokemon);

// Deletes a Pokemon with given id
router.delete('/:id', removePokemon)
 
// Updates a Pokemon with given id
router.patch('/:id', changePokemon)

modules.exports = { router }