class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2 
    @round = 0
    @is_active = true
  end

  def is_active
    @is_active
  end

  def turn
    if @round % 2 + 1 == 1
      return @player1
    else 
      return @player2
    end
  end

  def end_game
    winner = @player1
    if @player1.lives == 0
      winner = @player2
    end

    puts "#{winner.name} wins with a score of #{winner.lives}/3"    
    puts "----- GAME OVER -----"
    puts "Good bye!"
    @is_active = false
    nil
  end
  
  def round_increment
    puts "P1 #{@player1.lives}/3 vs P2 #{@player2.lives}/3"
    @round += 1
    puts "----- NEW TURN -----"
    nil
  end
end