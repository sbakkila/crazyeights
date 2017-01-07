require 'card'
require 'hand'
require 'deck'

describe Hand do
  let(:discard_pile) { double("discard_pile") }
  let(:deck) { double("deck") }
  subject(:hand) { Hand.new(deck, discard_pile) }

  let(:deck_cards) do [
    Card.new(:spades, :deuce),
    Card.new(:clubs, :five),
    Card.new(:diamonds, :jack),
    Card.new(:hearts, :queen),
    Card.new(:spades, :four),
    Card.new(:clubs, :nine),
    Card.new(:diamonds, :deuce),
    Card.new(:hearts, :three),
  ]
  end

  describe "#deal_from" do
    before (:each) do


      allow(deck).to receive(:take).with(8).and_return(deck_cards)
    end

    it "deals a hand of eight cards" do
      expect(hand.cards).to match_array(deck_cards)
    end

    it "makes valid moves and puts cards in the discard pile" do

      allow(discard_pile).to receive(:matching_suit).and_return(true)
      allow(discard_pile).to receive(:matching_value).and_return(false)
      allow(discard_pile).to receive(:<<).and_return([hand.cards[0]])
        hand.make_move(hand.cards[0])

      expect(hand.cards).to match_array(deck_cards)

    end
  end


end
