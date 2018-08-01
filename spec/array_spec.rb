require 'rspec'
require 'array'

describe '#my_uniq' do
  it 'should remove dups' do
    a = [1, 2, 1, 3, 3]
    expect(a.my_uniq).to eq([1, 2, 3])
  end
end
