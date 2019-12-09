class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2 
    @round = 0
    @is_active = true
  end

  def is_active_reader
    @is_active
  end

  def end_game
    @is_active = false    
    puts "----- GAME OVER -----"
    puts "Good bye!"
    nil
  end

  def turn_reader
    if @round % 2 + 1 == 1
      return @player1
    else 
      return @player2
    end
  end

  def round_reader
    @round
  end

  def round_increment
    @round += 1
    puts "----- NEW TURN -----"
    nil
  end
end