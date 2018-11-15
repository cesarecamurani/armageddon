class Player
  attr_reader :name, :health

  HP = 100
  DAMAGE = 20

  def initialize(name, health = HP)
    @name = name
    @health = health
  end

  def receive_damage
    @health -= DAMAGE
  end

end
