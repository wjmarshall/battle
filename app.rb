require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/player"

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
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect to("/play")
  end

  get "/play" do
    erb(:play)
  end

  get "/attack" do
    erb(:attack)
  end

  run! if app_file == $0
end





