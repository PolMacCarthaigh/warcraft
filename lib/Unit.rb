class Unit

 attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(wound_size)
    @health_points -= wound_size
  end
    
  def attack!(enemy_unit)
    enemy_unit.damage(self.attack_power)
  end

  def attack!(enemy)
    return nil if dead? || enemy.dead?
    enemy.damage(attack_power)
  end

  # Define a method #dead? on the Unit class. We add it to Unit instead of Footman because all Units can die, not just Footmans or Peasants.

  def dead?
    health_points > 0 ? false : true
  end

end