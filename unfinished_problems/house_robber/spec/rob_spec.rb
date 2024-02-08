require 'rspec'
require './lib/rob'

RSpec.describe 'rob' do
  before :all do
    @n1 = [1,2,3,1]
    @out_1 = 4

    @n2 = [2,7,9,3,1]
    @out_2 = 12
  end

  it '1' do
    expect(rob(@n1)).to eq(@out_1)
  end

  it '2' do
    expect(rob(@n2)).to eq(@out_2)
  end
end