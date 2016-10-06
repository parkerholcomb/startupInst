# require 'pry'
require "./player"
require "./bot"

class RockPaperScissors

  def initialize
    @player1 = Player.new()
    @player2 = Bot.new()

    puts "#{@player1.name}, looks like you will be playing against #{@player2.name}"
    sleep 1
    @round = 1
  end

  def self.description
    puts "Rock Paper Scissors is a world renowned leader in tiebreaker space.\n\n"
    puts "It's simplicitcy, combinded with competetive nature, makes it the ideal end to an trivail disagreement, unpaid bar tabs, or wing man duty."
  end

  def self.rules
    puts "\n*****The Rules*********"
    puts "\n1. Rock beats Scissors. Scissors beats paper. Paper beats rocks."
    puts "\n2. First to 3, aka Best out of 5"
  end



  def play
    until @player1.winCount == 3 || @player2.winCount == 3
      puts "\nRound #{@round}..."
      sleep 1

      scoreboard(leader)
      scoreboard(trailer)

      @player1.throw_hand
      @player2.throw_hand
      sleep 1

      winner = check_winner
      if winner
        winner.winCount += 1
        puts "#{winner.name} wins round #{@round}"
      else
        puts "tie, try again"
      end
      @round += 1
    end

    puts "In the end today, it took us #{@round} rounds to find out victor.
    \n\n#{leader.name} beat out #{trailer.name} with a final score of #{leader.winCount} to #{trailer.winCount}"
  end

  def scoreboard(player)
      # puts "\n\nRound #{@round}"
      puts "----------------------------------"
      puts "*****  #{player.name} : #{player.winCount}  *****"
      puts "----------------------------------"
  end

  def leader
    (@player1.winCount > @player2.winCount) ? @player1 : @player2
    #
    # if @player1.winCount > @player2.winCount
    #   @player1
    # else
    #   @player2
    # end

  end

  def trailer
    @player1.winCount > @player2.winCount ? @player2 : @player1
  end

  def check_winner
    if @player1.hand == 'Rock'
      nil         if @player2.hand == 'Rock'
      @player2    if @player2.hand == 'Paper'
      @player1    if @player2.hand == 'Scissors'
    elsif @player1.hand == 'Paper'
      nil        if @player2.hand == 'Paper'
      @player2   if @player2.hand == 'Rock'
      @player1   if @player2.hand == 'Scissors'
    elsif @player1.hand == 'Scissors'
      nil        if @player2.hand == 'Scissors'
      @player2   if @player2.hand == 'Rock'
      @player1   if @player2.hand == 'Paper'
    end
  end




end
