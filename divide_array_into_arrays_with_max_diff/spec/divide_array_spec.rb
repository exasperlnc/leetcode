require 'rspec'
require './lib/divide_array'

RSpec.describe 'Divide array' do
  before :all do
    @nums_1 = [1,3,4,8,7,9,3,5,1]
    @k_1 = 2
    @out_1 = [[1,1,3],[3,4,5],[7,8,9]]

    @nums_2 = [1,3,3,2,7,3]
    @k_2 = 3
    @out_2 = []

    @nums_3 = [1]
    @k_3 = 4
    @out_3 = []
  end
  
  it '1' do
    expect(divide_array(@nums_1,@k_1)).to eq(@out_1)
  end

  it '2' do
    expect(divide_array(@nums_2,@k_2)).to eq(@out_2)
  end

  it '3' do
    expect(divide_array(@nums_3,@k_3)).to eq(@out_3)
  end
end