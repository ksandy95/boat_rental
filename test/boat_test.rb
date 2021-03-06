require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'

class BoatTest < Minitest::Test

  def test_it_exists
    boat = Boat.new(:kayak, 20)
    assert_instance_of Boat, boat
  end

  def test_it_has_attributes
    boat = Boat.new(:kayak, 20)

    assert_equal :kayak, boat.type
    assert_equal 20, boat.price_per_hour
  end

  def test_hours_rented
    boat = Boat.new(:kayak, 20)

    assert_equal 0, boat.hours_rented
  end

  def test_add_hour
    boat = Boat.new(:kayak, 20)

    boat.add_hour
    boat.add_hour
    boat.add_hour
    boat.hours_rented

    assert_equal 3 , boat.hours_rented
  end

end
