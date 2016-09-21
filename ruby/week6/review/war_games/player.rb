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
