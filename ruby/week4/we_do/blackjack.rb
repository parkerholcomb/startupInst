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

class Deck

  def shuffle_deck
    #
  end

end

deck = Deck.new
deck.shuffle_deck

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
