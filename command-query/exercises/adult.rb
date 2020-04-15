class Adult

  def initialize
    @sobriety = beverages_consumed
  end

  def beverages_consumed
    0
  end

  def sober?
   @sobriety <= 2
  end

  def consume_an_alcoholic_beverage
    @sobriety += 1
  end

end
