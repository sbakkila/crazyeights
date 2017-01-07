require 'card'
require 'hand'
require 'deck'

describe Hand do
  describe "#deal_from" do
    it "deals a hand of eight cards" do
      deck_cards = [
        Card.new(:spades, :deuce),
        Card.new(:clubs, :five),
        Card.new(:diamonds, :jack),
        Card.new(:hearts, :queen),
        Card.new(:spades, :four),
        Card.new(:clubs, :nine),
        Card.new(:diamonds, :deuce),
        Card.new(:hearts, :three),
      ]
      discard_pile = double("discard_pile")
      deck = double("deck")

      expect(deck).to receive(:take).with(8).and_return(deck_cards)

      hand = Hand.new(deck, discard_pile)

      expect(hand.cards).to match_array(deck_cards)


      allow(discard_pile).to receive(:matching_suit).and_return(true)
        hand.make_move(hand.cards[0])
      allow(discard_pile).to receive(:matching_suit).and_return(true)
    end
  end


end
