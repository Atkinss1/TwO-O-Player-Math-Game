=begin
  -- NOUNS FOR CLASSES --
  * Player
  * Question
  * Game

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
            
          - Public Methods:
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
              - initialize (question_number = 0)
              - initialize ( answer = 0 )
              - initialize current_player = Player1
          - Public Methods:
              - question(number) - will provide a question based on number
                                 given in the arguement.
              
          - Private Method:
              - correct_answer?(number) -  will take in the players answer and
                                           return a boolean value 
              - is_interger?(number) - check if user gives integer then invoke 
                                      correct_answer?(number)
=end