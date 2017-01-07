# Discard Pile
# The discard pile contains one initial card (at random?) <- A factory method
# Reader for the suit of the top card on the discard pile
# Reader for the value of the top card on the discard pile
# Has an array that accepts the cards that the player plays onto the top of the discard file
require 'byebug'
require_relative 'card'
require_relative 'deck'

class DiscardPile

  attr_reader :deck, :pile

  def initialize(deck)
    @deck = deck
    @pile = []
    take_first
    # debugger
  end

  def take_first
    @pile.concat(@deck.take(1))
  end

  def matching_suit
    @pile.last.suit
    return top_value unless top_value == :eight
  end

  def matching_value
    top_value = @pile.last.value
  end


end

# ex_deck = Deck.new
# ex_pile = DiscardPile.new(ex_deck)
#  # p ex_deck.cards
# p ex_pile.pile
