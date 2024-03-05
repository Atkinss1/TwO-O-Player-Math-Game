require_relative 'question'
require_relative 'player'

class Game
  include Question

  def initialize
    @player = Player.new('Player 1')
    @answer = 0
  end

  def question(number)
    case number
    when 1
      question, @answer = addition
      puts question
      input = gets.chomp.to_i
        if integer(input) 
          if @answer == input
            puts "#{input}"
            @player.increment_score
            puts "score updated!"
            puts "Player 1 score is: #{@player.score}"
            end
        end 
    when 2
      subraction
    when 3
      multiplication
    when 4
      division
    else
      "Enter a number between 1 & 4."
    end
  end

  def integer(input)
    if input.to_s.match?(/\A\d+\z/)
      return true
    else
      puts "Input a number."
      false
    end
  end

end

