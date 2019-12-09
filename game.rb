class Game
  def initialize()
    @player1 = 'Player 1'
    @round = 0
    @is_active = true
  end

  def start
    while @round < 3 do
      puts "#{@player1}: What does 5 plus 12 equal?"
      
      puts "----- NEW TURN -----"
      @round += 1
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end

game = Game.new()
game.start()