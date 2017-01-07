# Discard Pile
# The discard pile contains one initial card (at random?) <- A factory method
# Reader for the suit of the top card on the discard pile
# Reader for the value of the top card on the discard pile
# Has an array that accepts the cards that the player plays onto the top of the discard file


require 'byebug'
require 'card'
require 'deck'
require 'discard_pile'

describe DiscardPile do
  let(:example_deck) { Deck.new }
  subject(:starting_pile) { DiscardPile.new(example_deck)}

  let(:simple_pile) do
    cards = [
      Card.new(:spades, :king)
    ]

  end
  subject(:starting_pile2) { DiscardPile.new(simple_pile)}

  describe '#initialize' do
    it 'should take one card from the deck' do
      expect(starting_pile.pile.length).to be(1)
      expect(starting_pile.pile.first).to be_a(Card)
    end
  end

  describe '#matching_suit' do
    it 'returns the suit of the top card' do
      expect(starting_pile2.pile.first.suit).to eq(:spades)
    end
  end

  describe '#matching_value' do
    it 'returns the value of the top card' do
      expect(starting_pile2.pile.first.value).to eq(:king)
    end
  end



end
