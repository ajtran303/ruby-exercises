require 'minitest/autorun'
require 'minitest/pride'
require './lib/cat'

class CatTest < Minitest::Test
  def test_it_exists
    carlos = Cat.new("Carlos")
    assert_instance_of Cat, carlos
  end

  def test_it_has_a_name
    # skip
    carlos = Cat.new("Carlos")
    assert_equal "Carlos", carlos.name
  end

  def test_it_can_have_a_different_name
    katie = Cat.new("Katie")
    assert_equal "Katie", katie.name
  end

  def test_it_has_a_sound
    # skip
    carlos = Cat.new("Carlos")
    assert_equal "meow", carlos.sound
  end
end
