require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'
require './lib/dock'

class DockTest < Minitest::Test

  def test_it_exists
    dock = Dock.new("The Rowing Dock", 3)
    assert_instance_of Dock, dock
  end

  def test_it_has_attributes
    dock = Dock.new("The Rowing Dock", 3)
    assert_equal "The Rowing Dock", dock.name
    assert_equal 3, dock.max_rental_time
  end

  # def test_the_docks_rental_log
  #   dock = Dock.new("The Rowing Dock", 3)
  #
  #   kayak_1 = Boat.new(:kayak, 20)
  #   # kayak_2 = Boat.new(:kayak, 20)
  #
  #   patrick = Renter.new("Patrick Star", "4242424242424242")
  #   # eugene = Renter.new("Eugene Crabs", "1313131313131313")
  #
  #   dock.rent(kayak_1, patrick)
  #   # dock.rent(kayak_2, eugine)
  #
  #   assert_equal {flim: flam}, dock.rental_log
  # end

end