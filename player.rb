class Player
  def initialize(name_long, name_short)
    @name_long = name_long
    @name_short = name_short
    @lives = 3
  end

  def name_long_reader
    @name_long
  end
  
  def name_short_reader
    @name_short
  end

  def lives_reader
    @lives
  end

  def lose_life
    @lives -= 1
  end
end