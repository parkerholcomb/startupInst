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

  def deal
    @cards.shift
  end
end



class Card

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def to_s
    "#{@suit}#{@number}"
  end

  def value
    if @number.is_a?(Integer)
      @number
    elsif @number == 'A'
      1
    else
      10
    end
  end

end
