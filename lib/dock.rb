require 'pry'
class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
    @returned_boats = []
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    total_charge = (boat.price_per_hour * (boat.hours_rented > @max_rental_time ? @max_rental_time : boat.hours_rented ))

    {:card_number => rental_log[boat].credit_card_number, :amount => total_charge}
  end

  def log_hour
    @rental_log.keys.each do |x|
      next x if @returned_boats.include?(x)
      x.add_hour
    end
  end

  def return(boat)
    @returned_boats << boat
  end


  def revenue
    sum = 0
    @returned_boats.each do |boat|
      sum += boat.price_per_hour * (boat.hours_rented > @max_rental_time ? @max_rental_time : boat.hours_rented)
    end
    sum
  end

end
