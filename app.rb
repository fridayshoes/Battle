require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end
    # our routes would go here
    
    # get '/' do
    #   'Testing infrastructure working!'
    # end
    # enable :sessions

    get '/' do
      erb :index
    end   

    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      $game = Game.new(player_1, player_2)
      redirect '/play'
    end
    
    get '/play' do
      @game = $game
      erb :play
    end
    
    get '/attack' do
      @game = $game
      @game.attack(@game.player_2)
      erb :attack
    end


  # # Start the server if this file is executed directly (do not change the line below)
  
  run! if app_file ==$0
end



