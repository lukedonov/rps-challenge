require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base 
  enable :sessions
get '/' do
  erb :index
end

post '/name' do
  player1 = Player.new(params[:player1])
  $game = Game.new(player1)
  redirect '/game'
end

get '/game' do
  @game = $game
  erb :game
end

get '/play' do
  @move = params[:player_move]
  @game = $game
  # @game = Game.new(@player)
  # @move = @game.
  erb :play
end

run! if app_file == $0
end