require 'pry'

class Car

  attr_accessor :odometer, :make, :model, :year

  def initialize(make, model, year, odometer)
    @make = make
    @model = model
    @year = year
    @odometer = odometer
  end

  # Functional methods are executed primarily for their return value
  def summary
    "#{@make} | #{@model} | #{@year} has #{@odometer} miles"
  end

  # Procedural methods are executed for their side-effects.
  def drive(miles)
    @odometer += miles
  end

end


car = Car.new("Ford", "F-150", 2015, 50)
car.summary
