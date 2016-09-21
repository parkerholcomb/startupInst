require './card'

class Deck

  @@suits = ["♥", "♦", "♣", "♠"]
  @@numbers  = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']

  def initialize
    @cards = []
    @@suits.each do |suit|
      @@numbers.each do |number|
        @cards << Card.new(suit, number)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw_card
    @cards.shift
  end

end
