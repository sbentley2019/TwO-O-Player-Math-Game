class Player
  def initialize(name)
    @name = name
    @lives = 3
  end

  def name_reader
    @name
  end

  def lives_reader
    @lives
  end

  def lose_life
    @lives -= 1
  end
end