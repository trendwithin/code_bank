class DeckOfCards
  attr_reader :deck

  def initialize
    suit = %w( C D H S )
    rank = %w( Ace King Queen Jack 10 9 8 7 6 5 4 3 2 )
    @deck = rank.product(suit).map(&:join)
  end

  def full_deck
    deck
  end

  def shuffle!
    deck.shuffle!
  end
end
