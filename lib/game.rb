
class Game
  attr_reader :player, :moves

  def initialize(player)
    @player = player
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  def move(player_move)
    player_move
  end

  def computer_move
    "Computer used Rock"
  end
end