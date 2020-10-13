const express = require( 'express' )
const fetch = require("node-fetch")
const fs = require('fs')
const app = express()
const mongoose = require('mongoose')
// const router = require('./routes/routes')
const CommentModel = require('./commentSchema')
const exphbs  = require('express-handlebars')

const port = process.env.PORT || 3000

app.engine('handlebars', exphbs())
app.set('view engine', 'handlebars')

app.use( express.urlencoded( {extended: false }) )
app.use( express.json() )

app.get('/', (req, res) => {
  res.render('page/home')
})

app.get('/comments', (req,res) => {
  res.render('page/comments')
})

app.post('/comments', async (req,res) => {
  let {email, postId} = req.body
  let error = false
  let data = false
  if (email === '' && postId !== '') {
    // user is searching by post ID
    try {
      data = await CommentModel.find({postId}).lean()
      if(data.length < 1) error = "Did not find any posts matching that number"
    } catch (err) {
      error = err
    }
  } else if (email !== '' && postId === '') {
    try {
      data = await CommentModel.find({ "email": { "$regex": email, "$options": "i" } }).lean()
      if(data.length < 1) error = "Did not find any emails matching that email"
    } catch (err) {
      error = err
    }

  } else {
    error = 'please ensure only 1 field is used to search'
  }
  res.render('page/comments', {error, data})
})

// app.use('/', router)

const dbName = 'comments_app'
const dbConnection = 'mongodb://localhost/' + dbName
// Set three properties to avoid deprecation warnings:
mongoose.connect(dbConnection, {
        useNewUrlParser: true,
        useUnifiedTopology: true,
        useFindAndModify: false
      }, (err) => {
        if (err)
          console.log('Error connecting to database', err)
        else
          console.log('Connected to database!')
          // listen here because its successful
          const server = app.listen(port, () => {
            console.log('listening on port:' + port)
        })
        fetchData();
})



async function fetchData() {
  try{
    const dataUrl = 'https://jsonplaceholder.typicode.com/comments'
    const response = await fetch(dataUrl)
    let data = await response.json()
    let jsonNoId = []
    data.forEach(element => {
      jsonNoId.push({name: element.name, postId: element.postId, body: element.body, email: element.email})
    });

    CommentModel.insertMany(jsonNoId);
    // fs.access('./comments.json', fs.F_OK, (err) => {
    //   if (err) {
    //     // this means the file does not exist so write it
    //     fs.writeFile('comments.json', json, 'utf8', (err) =>{
    //       if (err) throw err;
    //       console.log('Data Written to file')
    //     });
    //   }
    //   //file exists
    // })

  } catch(err) {
      console.log(err)
  }
}
