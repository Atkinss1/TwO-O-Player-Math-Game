require './classes/player.rb'
require './classes/game.rb'

jordan = Player.new("Jordan")

game = Game.new

p game.question(3)