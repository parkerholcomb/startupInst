

class Player
  attr_accessor :name, :hand, :winCount

  @@hash = {r: "Rock", p: "Paper", s: "Scissors"}
  def initialize
    puts "Whats your name?"
    @name = gets.chomp
    @hand = nil
    @winCount = 0
  end

  def throw_hand ## a human player gets to choose
    puts 'what are you going to throw? r/p/s'
    index = gets.chomp.to_sym
    @hand = @@hash[index]
    puts "#{@name} throws a #{@hand}"
  end

end

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


class RockPaperScissors

  def self.description
    puts "Rock Paper Scissors is a world renow leader in tiebreaker space."
    puts "It's simplicitcy, combinded with competetive nature, makes it the ideal end to an trivail disagreement, unpaid bar tab, or wing man duty."
  end

  def self.rules
    puts "*****The Rules*********"
    puts "1. Rock beats Scissors. Scissors beats paper. Paper beats rocks."
    puts "2. First to 3, aka Best out of 5"
  end

  def initialize
    @player1 = Player.new()
    @player2 = Bot.new()
    puts "#{@player1.name}, looks like you will be playing against #{@player2.name}"
    @round = 1
  end

  def play


    until @player1.winCount == 3 || @player2.winCount == 3
      puts "Round #{@round}..."
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

    puts "In the end today, it took us #{@rounds} rounds to find out victor.
    \n\n #{leader.name} beat out #{trailer.name} with a final score of #{leader.winCount} to #{trailer.winCount}"
  end

  def scoreboard(player)
      puts "\n\nRound #{@round}"
      puts "----------------------------------"
      puts "*****#{player.name}*****#{player.winCount}*****"
      puts "----------------------------------"
  end

  def leader
    @player1.winCount > @player2.winCount ? @player1 : @player2
  end

  def trailer
    @player1.winCount > @player2.winCount ? @player2 : @player1
  end

  def check_winner

    if @player1.hand == 'Rock'
      return nil           if @player2.hand == 'Rock'
      return @player2    if @player2.hand == 'Paper'
      return @player1    if @player2.hand == 'Scissors'
    elsif @player1.hand == 'Paper'
      return nil          if @player2.hand == 'Paper'
      return @player2   if @player2.hand == 'Rock'
      return @player1   if @player2.hand == 'Scissors'
    elsif @player1.hand == 'Scissors'
      return nil          if @player2.hand == 'Scissors'
      return @player2   if @player2.hand == 'Rock'
      return @player1   if @player2.hand == 'Paper'
    end

  end

end


RockPaperScissors.description
RockPaperScissors.rules

rps = RockPaperScissors.new()
rps.play
