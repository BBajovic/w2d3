require 'rspec'
require 'towers_of_hanoi'

describe 'towers_of_hanoi' do
  subject(:a) {TowersOfHanoi.new}
  let(:b) {TowersOfHanoi.new}
  describe '#initialize' do
    it 'initializes with 3 towers' do
      expect(a.towers.length).to eq(3)
    end
    it 'initialize 1st tower with 3 discs' do
      expect(a.towers[0]).to eq ([3, 2, 1])
    end
  end

  describe 'move_discs' do
    before do
      a.move_discs(0,1)
    end
    it 'takes a disc from one tower' do
      expect(a.towers[0].length).to eq(2)
    end
    it 'puts a disc onto another tower' do
      expect(a.towers[1].length).to eq(1)
    end
    it 'can not move a bigger disc onto a smaller one' do
      expect{a.move_discs(0,1)}.to raise_error(IllegalMoveError)
    end
  end

  describe '#won?' do
    before do
      a.move_discs(0,1)
      a.move_discs(0,2)
      a.move_discs(1,2)
      a.move_discs(0,1)
      a.move_discs(2,0)
      a.move_discs(2,1)
      a.move_discs(0,1)

    end
    it 'should return true when first tower empty and other towers are full' do
      expect(a.won?).to be true
    end

    it 'should return true when there is a full tower besides the first' do
      expect(a.won?).to be true
    end

    it 'should return false when game is not won' do
      expect(b.won?).to be false
    end
  end

  describe '#render' do
    it 'should render a string' do
      expect(a.render).to be_a(String)
    end
  end
end
