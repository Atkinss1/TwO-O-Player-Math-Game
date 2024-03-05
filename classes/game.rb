require_relative 'question'
require_relative 'player'

class Game
  include Question

  def initialize(player1, player2)
    @player_one = Player.new(player1)
    @player_two = Player.new(player2)
    @answer = 0
  end

  def question(number)
    case number
    when 1
      question, @answer = addition
      puts question
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            # update score
            # next players turn
          else
            puts "Seriously? No!"
            # update lives
            # next players turn
          end
        end 
    when 2
      question, @answer = subtraction
      puts question
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            # update score
            # next players turn
          else
            puts "Seriously? No!"
            # update lives
            # next players turn
          end
        end 
    when 3
      question, @answer = multiplication
      puts question
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            # update score
            # next players turn
          else
            puts "Seriously? No!"
            # update lives
            # next players turn
          end
        end 
    when 4
      question, @answer = division
      puts question
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            # update score
            # next players turn
          else
            puts "Seriously? No!"
            # update lives
            # next players turn
          end
        end 
    else
      "Enter a number between 1 & 4."
    end
  end

  def integer?(input)
    if input.to_s.match?(/\A\d+\z/)
      return true
    else
      puts "Input a number."
      false
    end
  end

end

