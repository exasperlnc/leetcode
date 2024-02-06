require 'rspec'
require './lib/combination_sum'

RSpec.describe 'combination sum' do
  before :all do
    @c1 = [2,3,6,7]
    @t1 = 7
    @out_1 = [[2,2,3],[7]]

    @c2 = [2,3,5]
    @t2 = 8
    @out_2 = [[2,2,2,2],[2,3,3],[3,5]]

    @c3 = [2]
    @t3 = 1
    @out_3 = []
  end

  it '1' do
    expect(combination_sum(@c1, @t1)).to eq(@out_1)
  end

  it '2' do
    expect(combination_sum(@c2, @t2)).to eq(@out_2)
  end

  it '3' do
    expect(combination_sum(@c3, @t3)).to eq(@out_3)
  end
end