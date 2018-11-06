

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
      return "scissors wins"
    end
    if @hand1 == 'paper' && @hand2 == 'rock'
      return "paper wins"
    end
    if @hand1 == 'paper' && @hand2 == 'scissors'
      return "scissors wins"
    end
  end


end
