require 'httparty'

response = HTTParty.get('https://coderacademy.edu.au/')

p response.body

http request ->

# http verbs/actions/methods

# get -> retrieve a resource
# post -> create a resource
# put/patch -> updated a resource
# delete -> delete a resource

# API - Application interface

# colorize gem -> methods
# IoT -> controlling hardware

# web API -> protocol
# # different way of accessing application
# rule -> REST API - representational state transfer

# CRUD actions
# C- create
# r - read
# u - update
# d - delete

# method url action

# get /jokes - retrieve all jokes
# post /jokes - creating a new joke
# get /jokes/joke_id - retreiving a single joke

# put/patch /jokes/joke_id -> updating a single joke
# delete /jokes/joke_id -> delete a single joke

