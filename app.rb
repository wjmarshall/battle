require "sinatra/base"
require "sinatra/reloader"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Hello Battle!"
    "Testing infrastructure working!"
    erb(:index)
  end

  post "/names" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect to("/play")
  end

  get "/play" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb(:play)
  end

  run! if app_file == $0
end





