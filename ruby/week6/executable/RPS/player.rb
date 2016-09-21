class Player
  attr_accessor :name, :hand, :winCount

  @@hash = {r: "Rock", p: "Paper", s: "Scissors"}

  def intro
    puts "Hi my name is #{@name}"
  end

  def initialize
    puts "Whats your name?"
    @name = gets.chomp
    @hand = nil
    @winCount = 0
  end

  def throw_hand ## a human player gets to choose
    puts "#{@name}, what are you going to throw? r/p/s"
    index = gets.chomp.to_sym
    @hand = @@hash[index]
    puts "#{@name} throws a #{@hand}"
  end
end
