require "sinatra/base"
require "capybara"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/destroy' do
    @game = $game
    @game.destroy(@game.switch_turn)
    erb(:destroy)
  end


  run! if app_file == $0

end
