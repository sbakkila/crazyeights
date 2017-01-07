# Hand
# Takes eight cards from deck
# Contains most of the logic about what moves are allowed
# Has valid_card method, looks at the board to know if you have any valid cards
# Keeps track of the number of cards in the hand
# Add the valid cards to the pile, and removes them from the hand
# If there are no valid cards, draw from the deck until the hand has a valid card
# Weird case: if first card is eight, first player can play anything and choose the suit
require_relative 'card'
require_relative 'hand'
require_relative 'deck'

class Hand

  # This is a *factory method* that creates and returns a `Hand`
  # object.
  def deal_from(deck)
    @cards = deck.take(8)
  end

  attr_accessor :cards

  def initialize(deck, discard_pile)
    @deck = deck
    @discard_pile = discard_pile
    deal_from(deck)
  end

  def is_valid_move?(card)
    @discard_pile.matching_suit(card.suit) ||
    @discard_pile.matching_value(card.value)
  end

  def has_moves?
    cards.each do |card|
      return true if is_valid_move?(card)
    end
    false
  end

  def make_move(*cards)
    cards.each do |card|
      @discardpile << card if is_valid_move?(card)
    end
  end

end
