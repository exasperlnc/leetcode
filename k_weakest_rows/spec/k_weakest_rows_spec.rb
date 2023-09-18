require './lib/k_weakest_rows'
require 'rspec'

describe 'example' do
  before :each do 
    # expected answer [2,0,3]
    @mat_1 = [[1,1,0,0,0],
    [1,1,1,1,0],
    [1,0,0,0,0],
    [1,1,0,0,0],
    [1,1,1,1,1]]
    @k_1 = 3

    # expected answer [0,2]
    @mat_2 = [[1,0,0,0],
    [1,1,1,1],
    [1,0,0,0],
    [1,0,0,0]]
    @k_2 = 2
  end

  it '1' do
    result = k_weakest_rows(@mat_1, @k_1)

    expect(result).to eq([2,0,3])
  end

  it '2' do
    result = k_weakest_rows(@mat_2, @k_2)

    expect(result).to eq([0,2])
  end
end