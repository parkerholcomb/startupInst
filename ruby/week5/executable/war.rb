require 'pry'



# puts "enter player 1 name"
# input = gets.chomp
# p1 = Player.new()
# p2 = Player.new()
#
# # rand(1..10)
# # [1,2,3,4,5,6,7,8,9,10].sample
#
# deck = [1,2,3,4,5,6,7,8,9,10]
# deck.shuffle!
#
# p1.card = deck.shift
# p2.card = deck.shift
#
# check_winner(p1, p2)
#
#
#
# def check_winner(p1, p2)
#   if p1.card > p2.card
#     puts "#{p1.name} wins"
#   else
#     puts "#{p2.name} wins"
#   end
# end


# binding.pry
# p1.intro
#
# p2 = Player.new()
# p2.intro

# binding.pry
# puts "enter your name"
# input = gets.chomp
# player1 = Player.new(input)

# Deck of cards

# 2 players

# Player
# @name
# @hand

# each player gets a card
# Card
# @suit
# @name
# (1..10)

# player with highest card wins
class Card

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def to_s
    "#{@number} of #{@suit}s"
  end

  def value
    # ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']
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

  def initialize
    #
    @cards = [
      Card.new("heart",2),
      Card.new("diamonds", 3),
      Card.new("diamonds", 4),
      Card.new("diamonds", 5),
      Card.new("hearts", 6),
      Card.new("diamonds", 7),
      Card.new("spades", 8),
      Card.new("diamonds", 9),
      Card.new("diamonds", 10)
    ]
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

# game = War.new()
# game.play



# card = Card.new("heart", 5)
# card2 = Card.new("diamond", "J")
# binding.pry
# puts card




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