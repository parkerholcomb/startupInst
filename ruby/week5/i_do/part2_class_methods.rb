########## Class Methods ##########

# Self can be referred to the class also it is used to create class methods.
# This is done by adding self in front of the method name.


class Card

  def self.explain_yourself
    puts "I am used to play games, like BlackJack n stuff"
  end

end


Card.explain_yourself

me = Card.new("Heart", "J")
me.explain_yourself
