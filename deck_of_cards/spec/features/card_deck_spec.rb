require 'minitest/spec'
require 'minitest/autorun'
require 'deck_of_cards'

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

  it "has the 3 of Clubs" do
    c = DeckOfCards.new
    c.full_deck.must_include "3C"
  end

  it "has 52 cards" do
    c = DeckOfCards.new
    c.full_deck.length.must_equal 52
  end
end
