require 'rspec'
require 'hand'
require 'deck'

describe 'Hand' do
  let (:b) {double("Deck")}
  subject(:a) {Hand.new(b)}
  describe '#initialize' do
    it 'should start with an empty hand' do
      expect(a.hand).to eq([])
    end
  end

  describe '#get_hand' do

    it 'should be dealt 5 cards to hand' do
      allow(b).to receive(:shuffle!)
      allow(b).to receive(:deal_card)
      a.get_hand
      expect(a.hand.length).to eq(5)
    end
  end
end
