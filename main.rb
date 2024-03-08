require './classes/game.rb'

puts "Welcome! Please enter Player 1s name: "
player1 = gets.chomp.to_s
puts "Please enter Player 2s name: "
player2 = gets.chomp.to_s

puts "GOOD LUCK!"
new_game = Game.new("#{player1}", "#{player2}")

puts new_game.start