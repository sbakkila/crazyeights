class Game
  attr_reader :deck, :players

  def initialize(players)
    @players = players
    @deck = Deck.new(suits, values)
  end


  def play
    raise NotImplementedError
  end
end
