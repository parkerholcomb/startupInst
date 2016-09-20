load "player.rb"

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
