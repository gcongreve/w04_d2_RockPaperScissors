require('sinatra')
require('sinatra/contrib/all')
require_relative('models/RockPaperScissors')
also_reload('models/*')

get '/rockpaperscissors/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]

  game = RockPaperScissors.new(hand1, hand2)
  @player1 = hand1
  @player2 = hand2
  @rps_result = game.play()
  erb(:result)
end

get '/playcomputer/:hand1' do
  hand1 = params[:hand1]
  hand2 = ['rock', 'paper', 'scissors'].sample
  game = RockPaperScissors.new(hand1, hand2)
  @human_choice = hand1
  @computer_choice = hand2
  @comp_result = game.play
  erb(:comp_result)
end

get '/rules' do
 erb(:rules)
end

get '/' do
  erb(:home)
end
