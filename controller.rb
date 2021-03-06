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
  @game_result = RockPaperScissors.who_won(@player1, @rps_result)
  erb(:result)
end

get '/playcomputer/:hand1' do
  hand1 = params[:hand1]
  hand2 = ['rock', 'paper', 'scissors'].sample
  game = RockPaperScissors.new(hand1, hand2)
  @human_choice = hand1
  @computer_choice = hand2
  @comp_result = game.play
  @who_won = RockPaperScissors.who_won(hand1, @comp_result)
  erb(:computer_result)
end

get '/playrandom' do
  hand1 = ['rock', 'paper', 'scissors'].sample
  hand2 = ['rock', 'paper', 'scissors'].sample
  game = RockPaperScissors.new(hand1, hand2)
  @computer1 = hand1
  @computer2 = hand2
  @random_result = game.play
  erb(:random)
end

get '/rules' do
 erb(:rules)
end

get '/' do
  erb(:home)
end
