let startingObject = {
	name: "Alex",
	age: 24,
	favourites: {
		game: "Super Smash Bros. Ultimate",
		drink: "Orange Vanilla Coca Cola",
		food: "Chocolate Orange Honeycomb",
		activity: "Playing videogames",
		programmingLanguage: "C#"
	},
	location: "NSW",
	coworkers: ["Nandini", "Carl", "Jairo"],
}

// Step 01.
//	Modify the code below so that it 
//	accesses the favourite game from the startingObject.
console.log(`Alex's favourite game is ${startingObject.favourites.game}`);


// Step 02.
//	Add the missing coworkers to 
//	the "coworkers" property on startingObject.
startingObject.coworkers.push('Varsha', 'Lavanya', 'Zeb',' Alex')

// Step 03.
//	Delete the age property from startingObject.
delete startingObject.age



module.exports = {
	startingObject

}

const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000

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

app.get('/', (req, res)=>{
	res.send('hello world from express!')
})

app.listen(port, () => console.log( 'listening on port:' + port))
