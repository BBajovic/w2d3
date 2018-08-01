require 'rspec'
require 'card'

describe "Card" do
  subject(:a) {Card.new(:clubs, 8)}
  let(:b) {Card.new(:clubs, 8)}
  let(:c) {Card.new(:clubs, 9)}
  describe "#initialize" do
    it 'should have a suit' do
      expect(a.suit).to eq(:clubs)
    end
    it 'should have a value' do
      expect(a.value).to eq(8)
    end
    it 'should throw an error for non acceptable values' do
      expect { Card.new(:clubs, 0)}.to raise_error(ArgumentError)
    end
    it 'should throw an error for non acceptable suits' do
      expect { Card.new(:stars, 6)}.to raise_error(ArgumentError)
    end
  end

  describe '#==' do
    it 'should return true when cards are equal' do
      expect(a == b).to be true
    end

    it 'should return false when cards are not equal' do
      expect(a == c).to be false
    end

    it 'should be able to compare with non-Card' do
      expect { a == 'str'}.not_to raise_error
    end

    it 'should return false when comparing to a non Card' do
      expect(a == 'str').to be false
    end

  end

  describe '#>' do
    let(:d) { Card.new(:hearts, 8)}
    it 'should return true when card value is greater'do
      expect(c > a).to be true
    end

    it 'should return false when card value is less'do
      expect(a > c).to be false
    end
    it 'should return false when card values are equal but suit is less'do
      expect(a > d).to be false
    end

    it 'should return true when card values are equal but suit is greater'do
      expect(d > a).to be true
    end
  end

  describe '#<' do
    let(:d) { Card.new(:hearts, 8)}
    it 'should return true when card value is less'do
      expect(a < c).to be true
    end

    it 'should return false when card value is greater'do
      expect(c < a).to be false
    end
    it 'should return false when card values are equal but suit is greater'do
      expect(d < a).to be false
    end

    it 'should return true when card values are equal but suit is less'do
      expect(a < d).to be true
    end
  end

  describe '#<=>' do
    it 'should return 1 if >' do
      expect(c <=> a).to eq(1)
    end

    it 'should return 0 if ==' do
      expect(a <=> b).to eq(0)
    end

    it 'should return -1 if <' do
      expect(a <=> c).to eq(-1)
    end
  end
end
