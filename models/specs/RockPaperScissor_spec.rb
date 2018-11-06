require('minitest/autorun')
require('minitest/rg')
require_relative('../RockPaperScissors')

class RockPaperScissorsTest < MiniTest::Test

  def setup
    @game1 = RockPaperScissors.new('paper', 'paper')
    @game2 = RockPaperScissors.new('paper', 'rock')
    @game3 = RockPaperScissors.new('paper', 'scissors')
    @game4 = RockPaperScissors.new('paper', 'sausages')
  end

  def test_draw
    assert_equal('Draw', @game1.play)
  end

  def test_paper_wins
    assert_equal('paper wins', @game2.play)
  end

  def test_paper_loses
    assert_equal('scissors wins', @game3.play)
  end

  def test_incorrect_input
    expected = "That is not a rock, paper or stone.  You've ruined the game."
    assert_equal(expected, @game4.play)
  end

  def test_who_won__win
    expected = "YOU WON"
    actual = RockPaperScissors.who_won('paper', @game2.play)
    assert_equal(expected, actual)
  end

  def test_who_won__lose
    expected = "YOU LOST. BOOO"
    actual = RockPaperScissors.who_won('paper', @game3.play)
    assert_equal(expected, actual)
  end

  def test_who_won__ruined
    expected = "The game has been ruined."
    actual = RockPaperScissors.who_won('paper', @game4.play)
    assert_equal(expected, actual)
  end

end
