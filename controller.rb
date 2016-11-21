require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')

get '/game' do
  @result = "Welcome to Rock,Paper,Scissors.\n A game of complete chance!\n
  To win you must choose the correct weapon against the opponent:\n
  Rock beats Scissors,\n
  Scissors cuts Paper,\n
  Paper wraps Rock!\n
  good luck, now choose one of the above options."
  erb(:result)
end

get '/game/:choice1' do
  player1 = params[:choice1]
  game = Game.new(player1)
 @result = game.play_game
  erb(:result)
end