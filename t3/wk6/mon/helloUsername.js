const express = require('express')
const bodyParser = require('body-parser')
const exphbs  = require('express-handlebars')
const axios = require('axios')
const app = express()
const port = 3000

app.engine('handlebars', exphbs())
app.set('view engine', 'handlebars')

// body parser middlewares
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

// use means its a middle ware
app.use(function (req, res, next) {
  console.log('middle ware running')
  next()
})

app.get('/', (req, res)=> {
  // res.send('Hello World! Express is running.')
  res.render('home');
})


// HELLO USERNAME
app.get('/greeter', (req, res) => {
  // res.send('Hello World!')
  const greeting = "Hello World!"
  res.render('greeter',{
    greeting: greeting
  });

})

app.get('/greeter/:name',(req,res) => {
  // res.send(`Hello ${req.params.name.capitalize()}!`)
  let greeting = `Hello ${req.params.name.capitalize()}!`
  res.render('greeter',{
    greeting: greeting
  });
})


// COIN FLIPPING

let coin = ["heads","tails"]

app.get('/coinflip',(req,res) => {
  // res.send(`You received ${coin.random()}!`)
  let side = coin.random()
  res.render('coin',{
    coin: side,
    num: 1
  });
})

app.get('/coinflip/:num',(req,res) => {
  let times = {heads:0,tails:0}
  let num = req.params.num
  let i = 0
  do {
    (coin.random() == "tails") ? times.tails++ : times.heads++
    i++
  } while (i < num)

  // res.send(`You received heads ${times.heads} times and tails ${times.tails} times for ${num} calls.`)

  let side = `heads ${times.heads} times and tails ${times.tails} times`
  res.render('coin',{
    coin: side,
    num: num
  });

})


// POKEMON TEAM GENERATOR



app.get('/teamBuilder/:num',(req,res) => {
  let num = req.params.num
  if (num > 6) res.send(`You can't have more than 6 pokemon in your team sorry!`)
  
  axios
  .get(`https://pokeapi.co/api/v2/pokemon?limit=892`)
  .then(resp => {
    let pokemon = []
      // let pokemon = resp.data.results.map(poke => {name: poke.name.capitalize(), url: poke.url})
      resp.data.results.forEach(poke => {
        pokemon.push({name: poke.name.capitalize(),id: getPokemonNumber(poke.url)})
      })
      let team = []
      let i = 0
      do {
        team.push(pokemon.random())
        i++
      } while (i < num);

      // res.send(`Your team of pokemon is ${JSON.stringify(team)}.`)
      res.render('pokemon',{pokemon: team});
    });
})



// COOL EXTRA THING


app.listen(port, () => console.log('listening on port:' + port))








String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1)
}
Array.prototype.random = function() {
  return this[Math.floor(Math.random() * this.length)]
}

function getPokemonNumber(string) {
  let num = string.match(/[0-9]{1,3}/g)[1]
  return num
}