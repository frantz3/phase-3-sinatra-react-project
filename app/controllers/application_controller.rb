class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

 
  get '/users' do
    user = User.all
    user.to_json
  end
  
  

  get '/books' do
    book = Book.all
    book.to_json
  end
 
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  

  post '/books' do
    book = Book.create(title: params[:title], author: params[:author], publisher: params[:author], genre:params[:genre])
    book.to_json
  end

  patch '/books/:id' do
    book = Book.find(params[:id])

    book.update(title: params[:title], author: params[:author], publisher: params[:author], genre:params[:genre])
    
    book.to_json

  end

  delete '/books/:id' do
    book = Book.find(params[:id])

    book.destroy

    book.to_json
  end





end
