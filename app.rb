require 'sinatra/base'

class RPS < Sinatra::Base 
  enable :sessions
get '/' do
  erb :index
end

post '/name' do
  $name = params[:player1]
  redirect '/game'
end

get '/game' do
  @player = $name
  erb :game
end

get '/play' do
  @player = $name
  @move = params[:player_move]
  p @move
  # @game = Game.new(@player)
  # @move = @game.
  erb :play
end

run! if app_file == $0
end