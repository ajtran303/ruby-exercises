class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @curses = default_curses
    @booty = default_booty
  end

  def default_curses
    0
  end

  def default_booty
    0
  end

  def cursed?
    @curses == 3
  end

  def commit_heinous_act
    @curses += 1
  end

  def rob_ship
    @booty += 100
  end

end
