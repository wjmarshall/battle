class Player
  attr_reader :name, :points

  def initialize(name, points=60)
    @name = name
    @points = points
  end

  # def attack(opponent)
  #   opponent.injure
  # end

  def injure
    @points -= 10
  end

end