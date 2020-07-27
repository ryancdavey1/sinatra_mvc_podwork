class ApplicationController < Sinatra::Base

    set :views, ->{File.join(root, "../views")}

    get '/' do
        erb :welcome
    end

    get '/books' do 
        @books = Book.all
        erb :index
    end

    get '/books/random' do 
        @book = Book.all.sample
        erb :random
    end

    post '/books/search' do
        author = params[:author]
        GoogleBooks::Adapter.new(author).fetch_books
        redirect '/books'
    end


end
