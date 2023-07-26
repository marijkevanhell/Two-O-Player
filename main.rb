require './players'
require './questions'
require './game'

def main
  player1 = Player.new("Player 1")
  player2 = Player.new("Player 2")
  
  game = Game.new(player1, player2)

  while !game.game_over?
    
    question = Question.new()
    puts "#{game.current_player.name}: #{question.ask_question}"
    player_answer = gets.chomp
    if player_answer.to_i == question.answer
      puts "YES! You are correct."
      puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
    else
      game.current_player.lives -= 1
      puts "Seriously? No!"
      puts "Player 1: #{player1.lives}/3 vs Player 2: #{player2.lives}/3"
    end
    game.change_turn
    puts "---NEW TURN---"


  end
  puts "#{game.winner.name} wins with a score of #{game.winner.lives}/3"
  puts "---GAME OVER---"
  puts "Good bye!"


end

main()
