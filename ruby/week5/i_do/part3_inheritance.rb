
########## Inheritance ##########

# Self can be referred to the class also it is used to create class methods.
# This is done by adding self in front of the method name.


class Car

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer

    @range = 200
  end

  def summary
    "#{@year} #{@make} #{@model}"
  end

  def drive(miles)
    current_range
    refuel_warning
    miles.times do
      @odometer += 1
      @range -= 1
    end
  end

  def current_range
    puts "you can drive #{@range} miles"
  end

end


#####first subclass

# Electric intherits from Car
# has all the parent class methods, plus more

class Electric < Car

  def refuel_warning
    if @range < 50
      puts "plug me in"
    elsif @range < 100
      puts "dont go too far"
    end
  end

end

# Diesel intherits from Car
# and overrides parent methods


class Diesel < Car

  def refuel_warning
    if @range < 50
      puts "fill me up"
    end
  end

  def current_range
    puts "you can drive #{@range} miles. But you can refill anywhere."
  end

end
