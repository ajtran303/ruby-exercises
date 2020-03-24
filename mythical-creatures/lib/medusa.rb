class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    person.flesh = false
    @statues << person
    if victim_count > 3
      unstone = @statues.shift
      unstone.flesh = true
    end
  end

  def victim_count
    @statues.size
  end

end

class Person
  attr_reader :name
  attr_writer :flesh

  def initialize(name)
    @name = name
    @flesh = true
  end

  def stoned?
    !@flesh
  end

end
