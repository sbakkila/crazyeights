require 'rspec'
require 'card'

describe Card do
  subject(:mycard) { Card.new(:clubs, :deuce) }
  let(:othercard) { Card.new(:hearts, :three) }
  let(:otherclub) { Card.new(:clubs, :three) }
  let(:eight) { Card.new(:spades, :eight) }

  it 'has a value' do
    expect(mycard.value).to eq(:deuce)
  end

  it 'has a suit' do
    expect(mycard.suit).to eq(:clubs)
  end

  it 'has equality operator that works for two non-8s' do
    expect(mycard ==(othercard)).to eq(false)
    expect(mycard ==(otherclub)).to eq(true)
  end

  it 'has equality operator that works with 8s' do
    expect(mycard ==(eight)).to eq(true)
  end

end
