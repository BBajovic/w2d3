require_relative 'deck'
require_relative 'card'

class Hand
  attr_reader :hand, :deck
  def initialize(deck)
    @deck = deck
    @hand = []
  end

  def get_hand
    deck.shuffle!
    5.times do |i|
      hand << deck.deal_card
    end
  end
end
