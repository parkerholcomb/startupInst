require 'pry'

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

class Player
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

class War

  def initialize
    @player1 = Player.new()
    @player2 = Player.new()

    @deck = Deck.new()
  end

  def play
    @deck.shuffle!

    @player1.card = @deck.draw_card
    puts "#{@player1.name} drew a #{@player1.card}"

    @player2.card = @deck.draw_card
    puts "#{@player2.name} gets a #{@player2.card}\n"
    puts "#{get_winner.name} is the winner"
  end

  def get_winner
    if @player1.card.value > @player2.card.value
      @player1
    else
      @player2
    end
  end

end

game = War.new()
game.play
