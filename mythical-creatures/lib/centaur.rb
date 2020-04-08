class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @crank_level = default_crank_level
    @stand = default_stand
  end

  def shoot
    if cranky? || laying?
      refuse
    else
      @crank_level += 1
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      refuse
    else
      @crank_level += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @crank_level >= 3
  end

  def standing?
    @stand
  end

  def laying?
    @stand == false
  end

  def sleep
    if standing?
      refuse
    else
      rest
    end
  end

  def lay_down
    @stand = false
  end

  def stand_up
    @stand = true
  end

  def drink_potion
    if !standing?
      refuse
    elsif rested?
      "BLEH!"
    else
      rest
    end
  end

  def rested?
    @crank_level == default_crank_level
  end

end

private

def default_crank_level
  0
end

def refuse
  "NO!"
end

def default_stand
  true
end

def rest
  @crank_level = default_crank_level
end
