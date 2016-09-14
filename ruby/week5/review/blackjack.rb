# Let’s build a simple Blackjack game together in class.

# You will have a dealer and a player.

# There will only be one deck of cards.
# Aces are set to 1 and it does not have to support 11.
# Suits and face cards does not need to be supported either.
#
# Rules of the game:
# Player and Dealer gets two cards each.
# Player see both their cards and can only see one of the dealer cards.
# Player has a choice to hit or stay. When player hits, player get another card.
# If player is over 21, player automatically lose. If player is under 21.
# You continue to ask if player want to hit or stay.
# Once you stay. It is the dealer’s(automated) turn. You can now see both the dealer’s cards and what card he gets if he hits.

# The rule for the dealer is this: Dealer MUST hit until they get to 17 or above. If they are at 17 or above they MUST stay. If dealer goes over 21 they automatically lose.
# If both the player and dealer are under 21 the one closest to 21 wins.

# For the lab this week, extend the capabilities of the Blackjack game. There are three tasks.
#
# Player should be asked to enter their name.
# Add the ability for the player to have a bank roll.
# Allow the Player to wager an amount on the game.
#
# Extra credit: Keep the game going until the Player has no more money in his bankroll or if he says exit.
#
# IF you'd like to see a really advanced version look this version built by Colin, an instructor in New-York:
# https://gist.github.com/sibrent/786d43c007bb166a4d0a


require 'pry'

class Card

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def value
    if @number.is_a?(Integer)
      @number
    elsif ['J','Q','K'].include?(@number)
      10
    else
      1
    end
  end

  def to_s
    "#{@suit}#{@number}"
  end

  # def draw
  #   # add the individual card on a line by line basis
  #    lines[0].append('┌─────────┐')
  #    lines[1].append('│         │')
  #    lines[2].append('│         │')
  #    lines[3].append('│         │')
  #    lines[4].append('│         │')
  #    lines[5].append('│         │')
  #    lines[6].append('│         │')
  #    lines[7].append('│         |')
  #    lines[8].append('└─────────┘')
  # end

end


class Deck

  attr_accessor :cards

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

  def shuffle
    @cards.shuffle!
  end

  def deal
    card = @cards.shift
  end

end

class BlackJack

  def initialize
    @dealer = Dealer.new()
    @player = Player.new()
    @deck = Deck.new

  end

  def play
    continue = 'y'
    until @player.broke? || continue == 'n'
      @deck.shuffle
      deal_cards
      offer_hit
      deal_dealer
      decide_winner
      puts "want to keep going? (y/n)"
      continue = gets.chomp
    end
  end

  def deal_cards
    @player.hand << @deck.deal
    @player.hand << @deck.deal

    @dealer.hand << @deck.deal
    @dealer.hand << @deck.deal
    puts "\n\nDealer - #{@dealer.show_hand}"

    @player.hand_summary
  end

  def offer_hit
    puts "Dealer: Would you like to hit? (y/n)"
    hit = gets.chomp
    if hit == 'y'
      until hit == 'n' || @player.bust?
        @player.hand << @deck.deal
        if @player.bust?
          @player.hand = []
          puts "Busteedddddd. Womp womp wommpppp"
        else
          @player.hand_summary
          puts "You're at #{@player.hand_value}, hit again? (y/n)"
          hit = gets.chomp
        end
      end

      @player.hand = [] if @player.bust?
    elsif hit == 'n'
      puts 'hmmmm what do you know?'
    end
  end

  def deal_dealer
    until @dealer.hand_value >= 17
      puts "Dealer has to draw. #{@dealer.formatted_hand} - (#{@deal.hand_value})"
      card = @deck.deal
      sleep 1
      puts "Dealer draws a #{card.to_s}"
      @dealer.hand << card
      # puts "w/ new card hand: #{@dealer.formatted_hand}"
    end

    if @dealer.bust?
      @dealer.hand = []
      puts "Busteedddddd. Womp womp wommpppp"
    else
      @dealer.hand_summary
    end
  end

  def decide_winner
    if @player.hand_value > @dealer.hand_value
      puts "#{@player.name} wins $500"
      @player.cash += 500
    elsif @player.hand_value < @dealer.hand_value
      puts "#{@player.name} loses $500"
      @player.cash -= 500
    elsif @player.hand_value == @dealer.hand_value
      puts "its a push"
    end
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
    puts "#{self.name} - #{self.formatted_hand}   | (#{self.hand_value})\n\n"
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


class Dealer

  attr_accessor :hand

  def initialize
    @name = ["Jim", "Bob", "SallySue"].sample
    @hand = []
  end

  def show_hand
    [@hand[0].to_s, '???'].join(", ")
  end

  def bust?
    hand_value > 21
  end

  def hand_summary
    puts "#{self.name} - #{self.formatted_hand}   | (#{self.hand_value})\n\n"
  end

  def formatted_hand
    @hand.map(&:to_s)
  end


  def hand_value
    @hand.inject(0){|sum, card| sum += card.value}
  end

end

game = BlackJack.new()
game.play
#You will need to have three classes. BlackJack, Player, and Dealer.
# You will need a deck of cards that only supports 1 to 10. 52 cards total. Face and Suits are not necessary.
# To start the game, player and dealer should each get two cards.
# The player should know their point total and only one of the dealer’s card.
# Ask the player if they would like to get another card(hit).
#   	a. If Yes, then deal another card to the player.
# 1. If it’s over 21 then the player loses(bust) and the game is over.
# 2. If it’s under 21. keep asking if player if he want’s another card.
# b. If No, then it is the dealer’s turn.
# 6. Dealer MUST get a card they have 17 or higher. The dealer must STAY if their total is 17 or over. Dealer loses if he goes over 21 (bust). This should be automated without user input.
# 7. Once the dealer stays. The winner should be determined. Whoever has a higher point total wins and if they both have the same amount of points then it is a draw.
