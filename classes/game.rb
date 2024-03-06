require_relative 'question'
require_relative 'player'

class Game
  include Question

  def initialize(player1, player2)
    @player_one = Player.new(player1)
    @player_two = Player.new(player2)
    @current_player = @player_one
    @question_number = 18
    @answer = 0
  end

  def start
    puts "--- Welcome to the Math Game --- "
    puts "      --- #{@player_one} & #{@player_two} ---\n\n"

    20.times do |index|
      break if game_over?

      ask_question
      next_players_turn
    end

    winner
  end


  def ask_question
    question, @answer = generate_question
      puts "Question # #{@question_number}: "
      puts "#{@current_player} #{question}"
      input = get_integer_input
      process_answer(input)
  end

  def generate_question
    case rand(1..4)
    when 1 then addition
    when 2 then subtraction
    when 3 then multiplication
    when 4 then division
    end
  end

  def get_integer_input
    print "Your answer is: "
    input = gets.chomp.to_i
    return input if input.to_s.match?(/\A-?\d+\z/)
    puts "Invalid input. Please enter a number."
    get_integer_input
  end

  def process_answer(input)
    if @answer == input
      puts "YES! You are correct."
      @current_player.increment_score
      
    else
      puts "Seriously? No!"
      puts "The correct answer was #{@answer}.."
      @current_player.minus_life
      puts "--- #{@player_one}: #{@player_one.life} / 3 vs #{@player_two}: #{@player_two.life} / 3 ---"

    end
    puts "#{@current_player}'s score is: #{@current_player.score}\n\n"
      @question_number += 1
      next_players_turn
  end

  def next_players_turn
    @current_player = (@current_player == @player_one) ? @player_two : @player_one
  end

  def game_over?
    @player_one.life.zero? || @player_two.life.zero? || @question_number > 20
  end

  def winner
    first_place = (@player_one.score > @player_two.score) ? @player_one : @player_two

    puts "Congrats #{first_place}! You have the higher score!"
  end

end

