class Werewolf
  attr_reader :name, :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @humanity = default_form_human
    @hunger = default_hunger_false
  end

  def default_form_human
    true
  end

  def human?
    @humanity
  end

  def change!
    @humanity = !@humanity
    @hunger = !@hunger
  end

  def wolf?
    @humanity == false
  end

  def default_hunger_false
    false
  end

  def hungry?
    @hunger
  end

  def consume(victim)
    if @humanity != default_form_human
      @hunger = false
      victim.status = :dead
      return 1
    else
      return 0
    end
  end

end
