class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def name
    @name
  end

  def lives
    @lives
  end

  def lose_life
    @lives -= 1
  end
end