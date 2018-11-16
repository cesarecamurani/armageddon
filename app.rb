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
    @civ_game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    @civ_game = Game.instance
    erb(:play)
  end

  get '/destroy' do
    @civ_game = Game.instance
    @civ_game.destroy(@civ_game.switch_turn)
    erb(:destroy)
  end

  get '/lost_page' do
    @civ_game = Game.instance
    @civ_game.current_turn
    erb(:lost_page)
  end

  run! if app_file == $0

end
