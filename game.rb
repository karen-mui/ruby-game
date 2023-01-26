class Game
attr_accessor :playerA, :playerB

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2) 
    @question = Questions.new
    @playerA = @player1  
    @playerB = @player2
    start
  end 

  def start
    num1 = rng
    num2 = rng

    @question.ask_question(@playerA.name, num1, num2)

    print "> "
    answer = $stdin.gets.chomp

    if answer == (num1 + num2).to_s
      puts "Yes! You are correct"
      display_score
    else
      puts "Seriously? No!" 
      @playerB.lives-= 1
      display_score
    end

    if (@player1.lives > 0 && @player2.lives > 0)
      puts "----- NEW TURN -----"
      current_player_switch
      start
    elsif (@player1.lives == 0)
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    elsif (@player2.lives == 0)
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end

  end

  def rng 
    rand(1...20)
  end

  def display_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def current_player_switch
    if @playerA == @player1
      @playerA = @player2
      @playerB = @player1
    elsif @playerA == @player2
      @playerA = @player1
      @playerB = @player2
    end
  end


end
