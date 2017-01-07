# Players
# * Players are initially dealt eight cards
# * Has a hand
# * Players can discard a card if it is equal to the top card on the discard pile
# * Players can discard multiple cards at once, if they have equal value and the first one of them matches the current top in value or suit
# * When players discard multiple cards, the last one they list ends up on the top of the discard pile
# * Draws up to three cards if @hand has no valid move - might belong in hand?
# * passes if still no valid move
# * Player chooses the suit of the 8

class Player
  attr_reader :name
  attr_accessor :hand

  def initialize(name)
    @name = name
    initial_deal
  end



  def play_cards(*cards)

  end

  def draw_card
    deck.take
  end

end
