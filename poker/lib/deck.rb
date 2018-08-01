require_relative 'card'
SUITS = [:diamonds, :clubs, :hearts, :spades]
VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
class Deck
  attr_reader :cards
  def initialize
    @cards = Deck.populate
  end

  def self.populate
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end

  def shuffle!
    cards.shuffle!
  end

  def deal_card
    cards.pop 
  end
end
