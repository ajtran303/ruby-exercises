class Narwhal

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @cute = hash[:cute]
  end

  def cute?
    @cute
  end

  def weight
    @weight
  end

  def name
    @name
  end

end
