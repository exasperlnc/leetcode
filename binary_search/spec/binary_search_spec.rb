require './lib/binary_search'
require 'rspec'

describe 'example' do
  before :all do
    @nums_1 = [-1,0,3,5,9,12]
    @target_1 = 9
    @out_1 = 4

    @nums_2 = [-1,0,3,5,9,12]
    @target_2 = 2
    @out_2 = -1
  end

  it '1' do
    expect(binary_search(@nums_1, @target_1)).to eq(@out_1)
  end

  it '2' do
    expect(binary_search(@nums_2, @target_2)).to eq(@out_2)
  end
end