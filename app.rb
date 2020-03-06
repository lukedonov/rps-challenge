require 'sinatra/base'

class RPS < Sinatra::Base 
get '/' do
  erb :index
end

post '/name' do
  player1 = params[:player1]
  redirect '/game'
end

get '/game' do
  "Hello Luke"
end

run! if app_file == $0
end