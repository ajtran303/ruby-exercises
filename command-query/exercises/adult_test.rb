gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'adult'

class AdultTest < Minitest::Test
  def test_adult_is_sober
    # skip
    adult = Adult.new
    assert adult.sober?, "Adult should really be sober right now."
  end

  def test_adult_does_not_get_drunk_too_easily
    # skip
    adult = Adult.new

    adult.consume_an_alcoholic_beverage
    assert adult.sober?, "Still sober."

    adult.consume_an_alcoholic_beverage
    assert adult.sober?, "Not drunk yet."

    adult.consume_an_alcoholic_beverage
    refute adult.sober?, "Yeah, OK. The adult is drunk."

    adult.consume_an_alcoholic_beverage
    refute adult.sober?, "The adult doesn't get more sober from drinking more."
  end

  def test_adult_is_sober_at_two_drinks
    # skip
    adult = Adult.new

    2.times {adult.consume_an_alcoholic_beverage}

    assert adult.sober?, "Adult is not drunk"
  end

  def test_adult_is_drunk_at_three_drinks
    adult = Adult.new

    3.times {adult.consume_an_alcoholic_beverage}

    refute adult.sober?, "Not drunk, yo!"
  end

end
