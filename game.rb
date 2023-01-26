class Game

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2) 
    @question = Questions.new  
    start
  end 

  def start
    @question.ask_question(@player1, 1, 2)
  end

  def lives
    @player1.lives-= 1 # can i just call this instead when i need to
    puts @player1.lives
  end 

  def


  def rng_two_numbers
     num1 = rand(1...20)
     num2 = rand(1...20)
     return num1, num2
  end


end
