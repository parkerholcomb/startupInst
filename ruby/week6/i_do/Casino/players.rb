class Player ## taken from war
  attr_accessor :card, :name

  def initialize
    puts "Enter player name"
    @name = gets.chomp

    @card = nil
  end

  def intro
    puts "Name is #{@name}"
  end

  def name
    @name
  end

end



class Player  ## take from RPS
  attr_accessor :name, :hand, :winCount

  @@hash = {r: "Rock", p: "Paper", s: "Scissors"}
  def initialize
    puts "Whats your name?"
    @name = gets.chomp
    @hand = nil
    @winCount = 0
  end

  def throw_hand ## a human player gets to choose
    puts 'what are you going to throw? r/p/s'
    index = gets.chomp.to_sym
    @hand = @@hash[index]
    puts "#{@name} throws a #{@hand}"
  end

end

class Bot < Player
  attr_accessor :name, :hand, :winCount

  def initialize
    @name = ['BB-8', 'Weebo', 'Ava' ].sample
    @hand = nil
    @winCount = 0
  end

  def throw_hand #while a bot goes randomly
    @hand = ['Rock', 'Paper', 'Scissors'].sample
    puts "#{@name} threw a #{@hand}"
  end

end

# # # # # # # # # # # # # # # # # # # # #

class Dealer

  attr_accessor :hand

  def initialize
    @name = ["Jim", "Bob", "SallySue"].sample
    @hand = []
  end

  def show_hand
    [@hand[0].to_s, '???'].join(", ")
  end

  def bust? #move to
    hand_value > 21
  end

  def hand_summary
    puts "#{name} - #{formatted_hand}   | (#{hand_value})\n\n"
  end

  def formatted_hand
    @hand.map(&:to_s)
  end

  def hand_value
    @hand.inject(0){|sum, card| sum += card.value}
  end

end


class Player
  attr_accessor :cash, :hand, :name

  def initialize
    puts "Whats your name sonny?"
    @name = gets.chomp

    puts "And how much you putting on the table?"
    @cash = gets.chomp.to_i

    @hand = []
  end

  def hand_summary
    puts "#{self.name} - #{self.formatted_hand} | (#{self.hand_value})\n\n"
  end

  def formatted_hand
    @hand.map(&:to_s).join(", ")
  end

  def hand_value
    @hand.inject(0){|sum, card| sum += card.value}
  end

  def bust?
    hand_value > 21
  end

  def broke?
    @cash < 1
  end

end
