# require 'pry'

class Player
  attr_accessor :card, :name

  def initialize
    puts "Enter player name"
    @name = gets.chomp
    @card = nil
  end

end


class War

  def initialize
    @player1 = Player.new()
    @player2 = Player.new()
    @deck = [2,3,4,5,6,7,8,9,10]

  end

  def play
    @deck.shuffle

    @player1.card = @deck.sample
    puts "#{@player1.name} drew a #{@player1.card}"
    sleep 1

    @player2.card = @deck.sample
    puts "#{@player2.name} gets a #{@player2.card}\n"

    sleep 1
    puts "#{winner.name} is the winner"

  end

  def winner
    if @player1.card > @player2.card
      @player1
    else
      @player2
    end
  end

end


game = War.new()
game.play





# class Card
#
#   def initialize(suit, number)
#     @suit = suit
#     @number = number
#   end
#
#   def value
#     if @number.is_a?(Integer)
#       @number
#     elsif ['J','Q','K'].include?(@number)
#       10
#     else
#       1
#     end
#   end
#
#   def to_s
#     "#{@suit}#{@number}"
#   end
#
# end
#
# class Deck
#
#   attr_accessor :remaining
#   attr_accessor :cards
#
#   @@suits = ["♥", "♦", "♣", "♠"]
#   @@numbers  = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']
#
#   def initialize
#     @cards = []
#     @@suits.each do |suit|
#       @@numbers.each do |number|
#         @cards << Card.new(suit, number)
#       end
#     end
#   end
#
#   def shuffle
#     @cards.shuffle!
#   end
#
#   def deal
#     card = @cards.shift
#   end
#
# end
