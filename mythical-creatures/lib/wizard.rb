class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @fatigue = default_fatigue_level
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def default_fatigue_level
    0
  end

  def rested?
    @fatigue < 3
  end

  def cast
    @fatigue += 1
    "MAGIC MISSILE!"
  end

end
