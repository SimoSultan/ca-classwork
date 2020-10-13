const mongoose = require("mongoose")
const Schema = mongoose.Schema

// Define Post schema
const Comment = new Schema({
  postId: Number,
  name: String,
  email: String,
  body: String
})

module.exports = mongoose.model("Comment", Comment)

