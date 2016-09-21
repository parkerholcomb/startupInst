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
