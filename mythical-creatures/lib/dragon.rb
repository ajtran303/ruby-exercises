class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hungry = true
    @meals = meals
  end

  def hungry?
    @hungry unless @meals == 3
  end

  def meals
    0
  end

  def eat
    @meals += 1
  end

end
