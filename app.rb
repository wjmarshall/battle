require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/game"
require_relative "./lib/player"

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect to("/play")
  end

  get "/play" do
    erb(:play)
  end

  get "/attack" do
    $game.attack($game.player_2)
    $game.switch_turns
    erb(:attack)
  end

  run! if app_file == $0
end





