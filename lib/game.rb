
class Game
  attr_reader :player, :moves, :random_move, :player2

  def initialize(player,player2 = nil)
    @player2 = player2
    @player = player
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  # def move(player_move)
  #   player_move
  # end

  def random_move
    @random_move = ['Rock','Paper','Scissors'].sample
  end
end