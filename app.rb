require "sinatra/base"
require "capybara"

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @your_name = params[:your_name]
    @enemy_name = params[:enemy_name]
    erb(:play)
  end

  run! if app_file == $0

end
