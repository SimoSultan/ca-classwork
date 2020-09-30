let books = [
  {
    id: 1,
    name: 'IT',
    author: 'Stephen King',
    movie: true
  },
  {
    id: 2,
    name: 'Looking for Alaska',
    author: 'John Green',
    movie: false 
  }
]

// module.exports = {books}


const express = require( 'express' )
// const { books } = require("./book")
const app = express()

app.use( express.urlencoded({extended: false}) )


const PORT = 3000

app.listen( PORT, () => {
    console.log(`Your app is running on port ${PORT}, QUICK!! go catch it!!`)
})

app.get('/', (req,res) => {
  res.send('Hello World')
})

app.get('/books', (req,res) => {
  res.send(books)
})

app.get('/books/:id', (req,res) => {
  let idParam = req.params.id
  let book = books.filter(b => b.id == idParam)
  res.send(book)
})


app.post('/books', (req,res) => {
  let userBook = req.body
  let book = {}
  let id = books.length + 1

  book.id = id
  book.name = (userBook.name !== undefined) ? userBook.name.capitalize() : "Unknown"
  book.author = (userBook.author !== undefined) ? userBook.author.capitalize() : "Unknown"
  book.movie = (userBook.movie === 'true')
  books.push(book)

  res.send(book)
})


app.put('/books/:id', (req,res) => {
  let userInput = req.body
  let id = req.params.id
  let bookToUpdate = books.filter(b => b.id == id)[0]

  bookToUpdate.name = ('name' in userInput) ? userInput.name.capitalize() : bookToUpdate.name
  bookToUpdate.author = ('author' in userInput) ? userInput.author.capitalize() : bookToUpdate.author
  bookToUpdate.movie = ('movie' in userInput)

  res.send(bookToUpdate)
})


app.delete('/books/:id', (req,res) => {
  let id = req.params.id
  const index = books.findIndex(book => book.id === parseInt(id));
  if (index !== -1) {
    books.splice(index, 1);
    res.status(200);
  } else {
    res.status(404);
  }
  res.send(books)
})


String.prototype.capitalize = function() {
  return this.charAt(0).toUpperCase() + this.slice(1)
}

