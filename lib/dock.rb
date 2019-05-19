require 'pry'
class Dock
  attr_reader :name, :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    # @rental_log = {}
  end
  #
  # def rent(@type, @name)
  #   binding.pry
  #   @rental_log << {@type => @name}
  # end

end
