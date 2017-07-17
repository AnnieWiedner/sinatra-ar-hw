class AuthorController < Sinatra::Base

  get '/' do
    authors = Author.all
    authors.to_json
  end

  get '/:id' do
    id = params[:id]
    author = Author.find(id)
    book.to_json
  end

  post '/' do
    request_body = JSON.parse(request.body.read)
    author = Author.new(request_body)
    author.save
    author.to_json
  end

  patch '/:id' do
    id = params[:id]
    author = Author.find(id)
    request_body = JSON.parse(request.body.read)
    author.update_attributes(request_body)
    author.save
    author.to_json
  end

  delete '/:id' do
    id = params[:id]
    author = Author.find(id)
    author.destroy
    authors = Author.all
    authors.to_json
  end

end
