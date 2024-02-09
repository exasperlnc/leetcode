require 'rspec'
require './lib/combination_sum2'

RSpec.describe 'combination sum 2' do
  before :all do
    @c1 = [10,1,2,7,6,1,5]
    @t1 = 8
    @out_1 = 
      [
      [1,1,6],
      [1,2,5],
      [1,7],
      [2,6]
      ]

      @c2 = [2,5,2,1,2]
      @t2 = 5
      @out_2 = 
        [
        [1,2,2],
        [5]
        ]
  end

  it '1' do
    expect(combination_sum2(@c1, @t1)).to eq(@out_1)
  end

  it '2' do
    expect(combination_sum2(@c2, @t2)).to eq(@out_2)
  end
end