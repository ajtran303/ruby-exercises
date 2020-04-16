class Parrot

  def initialize(hash)
    @name = hash[:name]
    @words = hash[:known_words]
  end

  def name
    @name
  end

  def sound
    "Squawk!"
  end

  def known_words
    @words
  end

end
