class Candy
  attr_reader :type, :sugar

  def initialize(type, sugar=default_sugar_level)
    @type = type
    @sugar = sugar
  end

  def default_sugar_level
    100
  end

end
