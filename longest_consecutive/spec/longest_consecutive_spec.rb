require './lib/longest_consecutive'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = [100,4,200,1,3,2]
    @out_1 = 4

    @in_2 = [0,3,7,2,5,8,4,6,0,1]
    @out_2 = 9
  end

  it '1' do
    expect(longest_consecutive(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(longest_consecutive(@in_2)).to eq(@out_2)
  end
end