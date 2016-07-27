class Unit

 attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(unit)
    @health_points -= unit
  end

  def attack!(enemy_unit)
    enemy_unit.damage(3)
  end
end