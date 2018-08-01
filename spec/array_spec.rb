require 'rspec'
require 'array'

describe '#my_uniq' do
  let(:a) {[1,2,1,3,3]}
  it 'should remove dups' do
    expect(a.my_uniq).to eq([1, 2, 3])
  end

  it 'should not mutate original array' do
    a.my_uniq
    expect(a).to eq(a)
  end
end

describe '#two_sum' do
  let(:a) {[-1, 0, 2, -2, 1]}
  let(:b) {[-1, 0, 0, 2, -2, 1]}
  it 'should return paired index with sum of 0' do
    expect(a.two_sum).to eq([[0,4], [2,3]])
  end

  it 'should return smaller first elements first' do
    expect(b.two_sum).to eq([[0,5], [1,2], [3,4]])
  end
end

describe '#my_transpose' do
  let(:a) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  let(:b) {[
    [0, 1, 2],
    [3, 4, 5]
  ]}

  it 'should transpose a 2D array' do
    expect(a.my_transpose).to eq([
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]])
  end

  it 'should work to transpose rectangle array' do
    expect(b.my_transpose).to eq([[0, 3], [1, 4], [2, 5]])
  end
end
