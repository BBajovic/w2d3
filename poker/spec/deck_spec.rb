require 'rspec'
require 'deck'

describe "Deck" do
  subject (:a) {Deck.new}
  describe '#initialize' do
    it 'should initialize to 52 cards' do
      expect(a.cards.length).to eq(52)
    end

    it 'should have unique cards' do
      expect(a.cards.uniq.length).to eq(52)
    end
  end

  describe '#shuffle!' do
    it 'should shuffle cards' do
      a.shuffle!
      expect(a.cards).not_to be(a.cards.sort)
    end
  end

  describe '#deal_card' do
    it 'should subtract from deck cards' do
      a.deal_card
      expect(a.cards.length).to eq(51)
    end

    it 'should return a Card' do
      expect(a.deal_card).to be_a Card
    end 
  end
end
