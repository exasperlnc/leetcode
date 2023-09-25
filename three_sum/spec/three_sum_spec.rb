require './lib/three_sum'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = [-1,0,1,2,-1,-4]
    @out_1 = [[-1,-1,2],[-1,0,1]]

    @in_2 = [0,1,1]
    @out_2 = []

    @in_3 =  [0,0,0]
    @out_3 =  [0,0,0]
  end

  it '1' do
    expect(three_sum(@in_1)).to eq(@out_1)
  end
  
  it '2' do
    expect(three_sum(@in_2)).to eq(@out_2)
  end

  it '3' do
    expect(three_sum(@in_3)).to eq(@out_3)
  end
end