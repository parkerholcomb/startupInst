require 'pry'
########## Car ##########

# class Car
#
#   # brand
#   # model
#   # year
#
#   def initialize(make, model, year)
#     @make = make
#     @model = model
#     @year = year
#   end
#
# end
#
# truck = Car.new("Ford", "F-150", 2013)
# truck.year == 2013


########## What if want to see it after initialize? ##########

# Getters

# class Car
#
#   def initialize(make, model, year)
#     @make = make
#     @model = model
#     @year = year
#   end
#
#   def make
#     @make
#   end
#
#   def model
#     @model
#   end
#
#   def year
#     @year
#   end
#
# end
#
# truck = Car.new("Ford", "F-150", 2013)
# truck.model
# truck.year == 2013

########## What if want to change values after initialize? ##########

 # e.g. increase the odometer

class Car

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer
  end

  #getters
  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def odometer
    @odometer
  end

  #setters

  def make=(make)
    @make = make
  end

  def model=(val) #parameter doesnt have to be same name
    @model = val
  end

  def year=(val)
    @year = val
  end

  def odometer=(val)
    @odometer = val
  end

end
#
# truck = Car.new("Ford", "F-150", 2013, 10000)
# truck.odometer = 1100
# truck.odometer += 25


########## attr_ ##########

# Since the getter and setter methods are so commonly used.
# There is a shortcut version to creating the standard getter/setter methods.


# attr_writer / attr_reader

class Car

  attr_reader :make

  def make
    @make
  end


  , :model, :year, :odometer

  attr_reader :odometer

  def odometer
    @odometer
  end

  attr_writer :odometer

  def odometer=(val)
    @odometer=val
  end

  attr_accessor :odometer

  # def odometer=(val)
  #   @odometer=val
  # end
  #
  # def odometer
  #   @odometer
  # end

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer
  end

end

# attr_accessor - both at same time

class Car

  attr_accessor :odometer, :make, :model, :year

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer
  end

end
