class Ogre
  attr_reader :name, :home, :swings, :encounter_counter

  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @swings = default_swings_value
    @encounter_counter = default_encounter_value
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    if human.notices_ogre?
      swing_at(human)
      human.is_conscious = false
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.is_conscious = true
  end

  def default_swings_value
    0
  end

  def default_encounter_value
    0
  end

end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :is_conscious

  def initialize(name="Jane")
    @name = name
    @encounter_counter = default_encounter_value
    @is_conscious = default_conscious_value
  end

  def default_encounter_value
    0
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @is_conscious == false
  end

  def default_conscious_value
    true
  end

end
