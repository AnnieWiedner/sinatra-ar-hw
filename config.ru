require 'bundler'
Bundler.require

require './models/BookModel'
require './models/AuthorModel'
require './controllers/BookController'
require './controllers/AuthorController'

run Sinatra::Application

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'library'
)

map('/books'){run BookController}
map('/authors'){run AuthorController}
