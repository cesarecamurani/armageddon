require "sinatra/base"
require "capybara"

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:your_name] = params[:your_name]
    session[:enemy_name] = params[:enemy_name]
    redirect '/play'
  end

  get '/play' do
    @your_name = session[:your_name]
    @enemy_name = session[:enemy_name]
    erb(:play)
  end

  run! if app_file == $0

end
