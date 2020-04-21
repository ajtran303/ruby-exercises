class Bag
  attr_reader :candies

  def initialize
    @candies = Array.new
  end

  def empty?
    count == 0
  end

  def count
    candies.length
  end

  def << candy
    candies << candy
  end

  def contains? type_of_candy
    candies.find do |candy|
      type_of_candy == candy.type
    end
  end

  def grab type_of_candy
    grabbed = contains? type_of_candy
    candies.delete grabbed
  end

  def take(amount)
    take_arr = Array.new
    amount.times do
      take_arr << candies.shift
    end
    return take_arr
  end

end
