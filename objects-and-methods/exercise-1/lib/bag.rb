class Bag
  attr_reader :candies

  def initialize
    @candies = Array.new
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.length
  end

  def << candy
    @candies << candy
  end

  def contains? treat
    @candies.find do |candy|
      treat == candy.type
    end
  end

end
