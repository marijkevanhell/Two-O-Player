class Player 
  attr_accessor :lives
  #Shouldn't be writable, only readable 
  attr_reader :name

  def initialize(name)
    @name = name  
    @questions = []
    @lives = 3
  end

    
end 



