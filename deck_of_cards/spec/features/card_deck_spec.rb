require 'minitest/spec'
require 'minitest/autorun'
require 'cards'

describe DeckOfCards do
  it "has an Ace of Hearts" do
    c = DeckOfCards.new
    c.full_deck.must_include "AceH"
  end

  it "has a King of Spades" do
    c = DeckOfCards.new
    c.full_deck.must_include "KingS"
  end

  it "has the Deuce of Hearts" do
    c = DeckOfCards.new
    c.full_deck.must_include "2H"
  end
end
