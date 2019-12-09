require './game'
require './player'
require './question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new(player1, player2)
question = Question.new()

while game.is_active_reader do
  current_player = game.turn_reader

  question_nums = question.generate_numbers
  puts "#{current_player.name_reader}: What does #{question_nums[0]} plus #{question_nums[1]} equal?"

  guess = gets.chomp.to_i
  if guess == question_nums[2]
    puts "#{current_player.name_reader}: YES! You are correct."
  else
    puts "#{current_player.name_reader}: Seriously? No!"
    current_player.lose_life 
  end

  puts "P1 #{player1.lives_reader}/3 vs P2 #{player2.lives_reader}/3"
  if player1.lives_reader == 0 || player2.lives_reader == 0
    game.end_game
  else
    game.round_increment
  end
end