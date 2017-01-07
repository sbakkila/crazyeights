require_relative 'card'
require 'byebug'

# Represents a deck of playing cards.
class Deck

  # Returns an array of all 52 playing cards.
  def self.all_cards
    all_cards = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        all_cards << Card.new(suit, value)
      end
    end

    all_cards.shuffle
  end

  attr_reader :cards

  def initialize(cards = Deck.all_cards)
    # debugger
    @cards = cards
  end

  # Returns the number of cards in the deck.
  def count
    @cards.length
  end

  # Takes 1 card from the top of the deck.
  def take(n)
    # debugger
    raise 'not enough cards' if n > count
    cards_to_give = []
    n.times { cards_to_give << @cards.shift }
    cards_to_give
  end

  # Returns an array of cards to the bottom of the deck.
  def return(returned_cards)
    @cards += returned_cards.shuffle
  end
end
