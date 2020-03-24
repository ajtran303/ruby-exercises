class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @meals = start_meals
  end

  def hungry?
    @meals != 3
  end

  def start_meals
    0
  end

  def eat
    @meals += 1
  end

end
