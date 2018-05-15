
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/posts/new' do
    erb :new
  end

  post '/posts'
    Post.create(:name => params[:name], :content => params[:content])
    erb :index
  end

  get '/posts'
    @posts = Post.all

    erb :index
  end

  get '/post/:id'
    @post = Post.find_by(:id params[:id])

    erb :show
  end

  get '/posts/:id/edit'

    erb :edit
  end
