class Game
  attr_accessor :player1, :player2, :game_over
  attr_reader :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @game_over = false
  end

  def change_turn
    if @current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  #? at the end, when we are checking for booleans
  #puts game.game_over? - need a question mark when accessing 
  def game_over?
    if player1.lives == 0 || player2.lives == 0
      @game_over = true
    end
    return @game_over
  end

  def winner
    if player1.lives == 0
      return player2
    else player2.lives == 0
      return player1
    end
  end
        
end 

