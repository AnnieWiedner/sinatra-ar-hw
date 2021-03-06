class BookController < Sinatra::Base

  get '/' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json
    books = Book.all
    books.to_json
  end

  get '/:id' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json
    id = params[:id]
    book = Book.find(id)
    book = author.book
    {book: book, library:library}.to_json
  end

  post '/' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json
    request_body = JSON.parse(request.body.read)
    book = Book.new(request_body)
    book.save
    book.to_json
  end

  patch '/:id' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json
    id = params[:id]
    book = Book.find(id)
    request_body = JSON.parse(request.body.read)
    book.update_attributes(request_body)
    book.save
    book.to_json
  end

  delete '/:id' do
    response['Access-Control-Allow-Origin'] = '*'
    content_type :json
    id = params[:id]
    book = Book.find(id)
    book.destroy
    books = Book.all
    books.to_json
  end

end
