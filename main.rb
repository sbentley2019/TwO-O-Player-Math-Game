require './game'
require './player'
require './question'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new(player1, player2)
question = Question.new()

while game.is_active do
  current_player = game.turn

  question_nums = question.generate_numbers
  puts "#{current_player.name}: What does #{question_nums[0]} plus #{question_nums[1]} equal?"

  guess = gets.chomp.to_i
  if guess == question_nums[2]
    puts "#{current_player.name}: YES! You are correct."
  else
    puts "#{current_player.name}: Seriously? No!"
    current_player.lose_life 
  end

  if player1.lives == 0 || player2.lives == 0
    game.end_game
  else
    game.round_increment
  end
end