=begin
  -- NOUNS FOR CLASSES --
  * Player
  * Question
  * Game
  * PlayerManagement

  -- ROLES FOR EACH CLASS --

  * Player:
          - Responsibilities:
            - Keep track of player name, score and health
          - Attributes:
              - name - will be given on initializing the object
              - score - will be initialized at 0
              - life - will be initialized at 3

          - Private Methods:
              - update_score: Updates score +10 points

  * Question: 
          - Responsibilites:
              - Create questions based on methods such as Addition,    
                Multiplication, Subraction and Division.
            
          - Private Methods:
              - addition  (eg 1 + 1)
              - subraction  (eg 1 - 1)
              - multiplication  (eg 1 * 1)
              - division  (eg 1 / 1)
  
  * Game:
          - Responsbilities:
              - Manage game flow, player turns, health and scoring.
              - End the game when players health reaches 0.
            
          - Attributes:
              - initialize Player1 & Player 2
              - initialize ( answer = 0 )

          - Public Methods:
              - question(number) - will provide a question based on number
                                 given in the arguement.
              
          - Private Method:
              - correct_answer?(number) -  will take in the players answer and
                                           return a boolean value 
              - is_interger?(number) - check if user gives integer then invoke 
                                      correct_answer?(number)

  * PlayerManagement:
          - Responsibilites:
              - Keep track of players turn and ending the game
  
          - Private Methods:
              - player_turn - checks which players turn it is
              - update_score - will update score if correct_answer is true
              - game_end - will print out the winner of the current game if opposite player run out of lives


=end