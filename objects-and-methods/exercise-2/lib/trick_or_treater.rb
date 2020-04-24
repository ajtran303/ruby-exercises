class TrickOrTreater
  attr_reader :dressed_up_as, :bag, :sugar_level

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = Bag.new
    @sugar_level = default_sugar_level
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.count
  end

  def eat
    candy = bag.take 1
    @sugar_level += candy.first.sugar
  end

  def default_sugar_level
    0
  end

end
