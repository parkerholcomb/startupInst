require 'pry'
########## Person ##########

class Person
  # attr_accessor :first_name, :last_name

  attr_writer :height
  attr_reader :first_name, :last_name

  def initialize(first, middle, last, height, born)
    @first_name = first
    @middle_name = middle
    @last_name = last
    @born = born
    @height = height
  end

  def last_first
    @last_name + ", " + @first_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def age
    Time.now.year - @born
  end

  def introduce_yourself
    puts "Hi my name is #{full_name} and I am #{@height} feet tall and I was born #{age} years ago"
  end

end

dude = Person.new()
dude.introduce_yourself

# $ ruby week4/i_do/part2_instance_methods.rb


# lets write a height_to_s method
