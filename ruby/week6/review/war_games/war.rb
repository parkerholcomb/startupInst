# require 'pry'
require './player'
require './deck'

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
