# ruby
require "pry"

class Car

  attr_reader :make, :model, :year
  attr_accessor :odometer, :range

  type
  @type
  @@type = "electric"
  TYPE = 'car'

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer

    @range = 200
  end

  def type
    @@type
  end

  def summary
    "#{@year} #{@make} #{@model}"
  end

  def drive(miles)
    miles.times do
      @odometer += 1
      @range -= 1
    end
  end

  def charge(range)
    range.times do
      @range += 1
      puts "range is now #{@range}"
      # sleep 1
    end
  end

  # lets add a miles warning

end

tesla = Car.new('Tesla', 'Model-X', '2016', 0)
puts "The #{tesla.summary} has a range of #{tesla.range} miles"

car = Car.new('BMW', 'i3', '2015', 1200)
puts "The #{car.summary} has a range of #{car.range} miles"

binding.pry

while car.range > 0
  puts "how far to drive"
  miles = gets.chomp.to_i
  car.drive(miles)

  puts "After driving, #{miles} miles, the #{car.summary}
  now has a range of #{car.range} miles.
  And the odometer reads #{car.odometer}"

  puts "how much to charge?"
  charge = gets.chomp.to_i

  car.charge(charge)
end
