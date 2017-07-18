require 'bundler'
Bundler.require

require './models/BookModel'
require './models/LibraryModel'
require './models/CirculationModel'
require './controllers/BookController'
require './controllers/LibraryController'

run Sinatra::Application

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'read'
)

map('/books'){run BookController}
map('/libraries'){run LibraryController}

#an author has many books
#a book belongs to an author
#the belongs to should have the foreign id
