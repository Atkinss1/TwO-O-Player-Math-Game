# Math Game in Ruby

## Introduction
This is a simple math game implemented in Ruby using Object-Oriented Programming (OOP) principles. Players take turns answering math questions. The game continues until one player loses all their lives or until 20 questions have been asked. The player with the highest score at the end wins.

## How to Play
1. Run the `main.rb` file to start the game.
2. Enter the names of the two players when prompted.
3. Players take turns answering math questions.
4. For each question, players enter their answer.
5. If the answer is correct, the player earns 10 points.
6. If the answer is incorrect, the player loses a life.
7. The game ends when one player loses all their lives or after 20 questions.
8. The player with the highest score at the end wins.

## Classes
### Player
- Attributes:
  - `name`: stores the player's name
  - `score`: stores the player's score (initially set to 0)
  - `life`: stores the number of lives (initially set to 3)
- Methods:
  - `increment_score`: increases the player's score by 10 points
  - `minus_life`: decreases the player's life count by 1
  - `to_s`: returns the player's name as a string

### Game
- Attributes:
  - `player_one` and `player_two`: instances of the `Player` class
  - `current_player`: stores the player whose turn it is
  - `question_number`: stores the current question number
  - `answer`: stores the correct answer to the current question
- Methods:
  - `start`: starts the game loop
  - `ask_question`: generates a math question and prompts the current player to answer
  - `generate_question`: randomly generates addition, subtraction, multiplication, or division questions
  - `get_integer_input`: prompts the player for an answer and ensures it is an integer
  - `process_answer`: checks the player's answer and updates score/lives accordingly
  - `next_players_turn`: switches to the next player's turn
  - `game_over?`: checks if the game is over
  - `winner`: determines the winner based on scores

### Question Module
- Methods (included in `Game` class):
  - `addition`: generates an addition question and answer
  - `subtraction`: generates a subtraction question and answer
  - `multiplication`: generates a multiplication question and answer
  - `division`: generates a division question and answer

## Usage
1. Ensure you have Ruby installed on your system.
2. Run the `main.rb` file.
3. Follow the on-screen instructions to play the game.
