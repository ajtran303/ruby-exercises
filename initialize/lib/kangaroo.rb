class Kangaroo
  attr_reader :children, :name
  def initialize(name, array)
    @children = array
    @name = name
  end
end
