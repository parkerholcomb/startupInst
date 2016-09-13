# https://docs.google.com/presentation/d/1KFVK0wYd_8zmpgscIkzFG26WihKAGDtc09Bz244p_wM/edit#slide=id.gaca26bc12_0_10

########## Self ##########

# The self keyword in Ruby can give you access to the current object. It allows you to call methods that the object has within the class itself.


class Card

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def value
    binding.pry
    if @number.is_a?(Integer)
      @number
    elsif ['J','Q','K'].include?(@number)
      10
    else
      1
    end
  end

  def to_s

    "#{@suit}#{@number}"
  end

end

me = Card.new("Heart", "J")
you = Card.new("Diamond", 9)

me.value > you.value
