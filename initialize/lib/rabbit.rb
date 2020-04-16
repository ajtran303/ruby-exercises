class Rabbit

  def initialize(hash)
    @name = hash[:name]
    @beat = hash[:num_syllables]
  end

  def name
    return @name + " Rabbit" if @beat == 2
    @name
  end

end
