
class Game
  attr_reader :player, :moves, :random_move

  def initialize(player)
    @player = player
    @moves = ['Rock', 'Paper', 'Scissors']
    @random_move = nil
  end

  def move(player_move)
    player_move
  end

  def computer_move
    "Computer used " + random_move
  end

  def random_move
    @random_move = ['Rock','Paper','Scissors'].sample
  end
end