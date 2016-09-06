
########## Person ##########

class Person
  attr_accessor :first_name, :last_name

  def initialize
    @first_name = "Parker"
    middle_name = "Chase"
    @last_name = "Holcomb"
    @height = 6.167
    @born = 1987
  end

  def last_first
    @last_name + ", " + @first_name
  end

  def full_name
    @first_name + " " + middle_name + " " + @last_name
  end

  def age
    Time.now.year - @born
  end

  def introduce_yourself
    puts "Hi my name is #{full_name} and I am #{@height} feet tall and I was born #{age} years ago"
  end

end

# $ ruby week4/i_do/part2_instance_methods.rb


lets write a height_to_s method
