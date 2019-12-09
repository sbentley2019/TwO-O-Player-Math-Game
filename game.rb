class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @round = 0
    @is_active = true
  end

  def start
    puts "#{@player1.name_long_reader}, #{@player2.name_long_reader}"
    while @round < 3 do
      puts "#{@player1.name_short_reader}: What does 5 plus 12 equal?"
      
      puts "----- NEW TURN -----"
      @round += 1
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end