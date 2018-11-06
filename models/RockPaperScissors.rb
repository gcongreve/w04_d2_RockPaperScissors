

class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end


  def play()
    if @hand1 == @hand2
      return "Draw"
    end
    if @hand1 == 'scissors' && @hand2 == 'paper'
      return "scissors wins"
    end
    if @hand1 == 'scissors' && @hand2 == 'rock'
      return "rock wins"
    end
    if @hand1 == 'rock' && @hand2 == 'paper'
      return "paper wins"
    end
    if @hand1 == 'rock' && @hand2 == 'scissors'
      return "rock wins"
    end
    if @hand1 == 'paper' && @hand2 == 'rock'
      return "paper wins"
    end
    if @hand1 == 'paper' && @hand2 == 'scissors'
      return "scissors wins"
    end
  else
    return "That is not a rock, paper or stone.  You've ruined the game."
  end

  def self.who_won(hand1, result)
    if result == "#{hand1} wins"
      return "YOU WON"
    elsif result == "Draw"
      return "YOU DREW"
    elsif result[-4..-1] == "wins"
      return "YOU LOST. BOOO"
    else
      return "The game has been ruined."
    end
  end


end
