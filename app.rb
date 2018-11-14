require "sinatra/base"
require "capybara"
require "./lib/player"

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  get '/destroy' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.destroy(@player_2)
    erb(:destroy)
  end


  run! if app_file == $0

end
