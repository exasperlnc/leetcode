require './lib/max_area'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = [1,8,6,2,5,4,8,3,7]
    @out_1 = 49

    @in_2 = [1,1]
    @out_2 = 1
  end

  it '1' do
    expect(max_area(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(max_area(@in_2)).to eq(@out_2)
  end
end