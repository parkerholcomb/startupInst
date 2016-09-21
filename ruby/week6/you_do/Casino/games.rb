require "./player.rb"

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

class War

  def initialize
    @player1 = Player.new()
    @player2 = Player.new()

    @deck = Deck.new()
  end

  def play
    @deck.shuffle!

    @player1.card = @deck.deal
    puts "#{@player1.name} drew a #{@player1.card}"

    @player2.card = @deck.deal
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
      puts "Dealer has to draw. #{@dealer.formatted_hand} - (#{@dealer.hand_value})"
      card = @deck.deal
      sleep 1
      puts "Dealer draws a #{card.to_s}"
      @dealer.hand << card
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
