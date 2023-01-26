class Player
  attr_accessor :name, :lives 

  def initialize(id)
    @name = "Player #{id}" 
    @lives = 3
  end

end
