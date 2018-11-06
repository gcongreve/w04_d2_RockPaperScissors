require('sinatra')
require('sinatra/contrib/all')
require_relative('models/RockPaperScissors')
also_reload('models/*')

get '/rockpaperscissors/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]

  game = RockPaperScissors.new(hand1, hand2)

  @rps_result = game.play()
  erb(:result)
end
