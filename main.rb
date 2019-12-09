require './game'
require './player'

player1 = Player.new('Player 1', 'p1')
player2 = Player.new('Player 2', 'p2')

game = Game.new(player1, player2)
game.start()