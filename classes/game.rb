require_relative 'question'
require_relative 'player'

class Game
  include Question

  def initialize(player1, player2)
    @player_one = Player.new(player1)
    @player_two = Player.new(player2)
    @current_player = @player_one
    @question_number = 1
    @answer = 0
  end

  def start
    puts "--- Welcome to the Math Game --- "
    puts "      --- #{@player_one} & #{@player_two} ---\n\n"

    loop do
      question(rand(4))
      break if @player_one.life == 0 || @player_two.life == 0 || @question_number > 20
    end

    winner = @player_one.score > @player_two.score ? @player_one : @player_two

    puts "Congrats #{winner}! You have the higher score!"
  end

  def question(number)
    case number
    when 1
      question, @answer = addition
      puts "Question # #{@question_number}: "
      puts "#{@current_player} #{question}"
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            @current_player.increment_score
            puts "#{@current_player}'s score is: #{@current_player.score}\n\n"
            @question_number += 1
            next_players_turn
          else
            puts "Seriously? No!"
            @current_player.minus_life
            puts "--- #{@player_one}: #{@player_one.life} / 3 vs #{@player_two}: #{@player_two.life} / 3 ---"
            @question_number += 1
            next_players_turn
          end
        end 
    when 2
      question, @answer = subtraction
      puts "Question # #{@question_number}: "
      puts "#{@current_player} #{question}"
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            @current_player.increment_score
            puts "#{@current_player}'s score is: #{@current_player.score}\n\n"
            @question_number += 1
            next_players_turn
          else
            puts "Seriously? No!"
            @current_player.minus_life
            puts "--- #{@player_one}: #{@player_one.life} / 3 vs #{@player_two}: #{@player_two.life} / 3 ---"
            @question_number += 1
            next_players_turn
          end
        end 
    when 3
      question, @answer = multiplication
      puts "Question # #{@question_number}: "
      puts "#{@current_player} #{question}"
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            @current_player.increment_score
            puts "#{@current_player}'s score is: #{@current_player.score}\n\n"
            @question_number += 1
            next_players_turn
          else
            puts "Seriously? No!"
            @current_player.minus_life
            puts "--- #{@player_one}: #{@player_one.life} / 3 vs #{@player_two}: #{@player_two.life} / 3 ---"
            @question_number += 1
            next_players_turn
          end
        end 
    when 4
      question, @answer = division
      puts "Question # #{@question_number}: "
      puts "#{@current_player} #{question}"
      input = gets.chomp.to_i
        if integer?(input) 
          if @answer == input
            puts "YES! You are correct."
            @current_player.increment_score
            puts "#{@current_player}'s score is: #{@current_player.score}\n\n"
            @question_number += 1
            next_players_turn
          else
            puts "Seriously? No!"
            @current_player.minus_life
            puts "--- #{@player_one}: #{@player_one.life} / 3 vs #{@player_two}: #{@player_two.life} / 3 ---"
            @question_number += 1
            next_players_turn
          end
        end 
    end
  end

  def next_players_turn
    @current_player = (@current_player == @player_one) ? @player_two : @player_one
    question(rand(4))
  end
  
  def integer?(input)
    if input.to_s.match?(/\A-?\d+\z/)
      return true
    else
      puts "Input a number."
      false
    end
  end

end

