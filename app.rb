require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base 
  enable :sessions
get '/' do
  erb :index
end

get '/index1' do
  erb :index1
end

post '/name' do
  player1 = Player.new(params[:player1])
  @@game = Game.new(player1)
  redirect '/game'
end

post'/names' do 
  player1 = Player.new(params[:player1])
  player2 = Player.new(params[:player2])
  @@games = Game.new(player1,player2)
  redirect '/games'
end

get '/game' do
  @game = @@game
  erb :game
end

get '/games' do
  @games = @@games
  erb :games
end

get '/games2' do
  @games = @@games
  @@p1move = params[:player1_move]
  erb :games2
end

get '/play' do
  @move = params[:player_move]
  @game = @@game
  erb :play
end

get '/play2' do
  @p1move = @@p1move
  @p2move = params[:player2_move]
  @games = @@games
  erb :play2
end

run! if app_file == $0
end