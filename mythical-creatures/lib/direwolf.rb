class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect

  def initialize(name, home=default_home, size=default_size)
    @name = name
    @home = home
    @size = size
    @starks_to_protect = Array.new
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.length < 2
      @starks_to_protect << stark
      stark.is_safe = true
    end
  end

  def hunts_white_walkers?
    if is_protecting?
      false
    else
      true
    end
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.is_safe = false
    stark
  end

  def is_protecting?
    @starks_to_protect.size > 0
  end

  def default_home
    "Beyond the Wall"
  end

  def default_size
    'Massive'
  end

end

class Stark
  attr_reader :name, :location, :size
  attr_accessor :is_safe

  def initialize(name, location=default_location)
    @name = name
    @location = location
    @is_safe = default_safety_value
  end

  def safe?
    @is_safe
  end

  def house_words
    if safe?
      "The North Remembers"
    else
      "Winter is Coming"
    end
  end

  def default_location
    "Winterfell"
  end

  def default_safety_value
    false
  end

end
