class Beers
  attr_reader :inventory

  def initialize
    @inventory = default_inventory_value
  end

  def default_inventory_value
    99
  end

  def take_one_down_and_pass_it_around
    @inventory -= 1
  end

  def restock
    @inventory = default_inventory_value
  end

end
