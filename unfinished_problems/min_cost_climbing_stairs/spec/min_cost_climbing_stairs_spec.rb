require 'rspec'
require './lib/min_cost_climbing_stairs'

RSpec.describe 'min cost climbing stairs' do
  before :all do
    @c1 = [10, 15, 20]
    @out_1 = 15

    @c2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
    @out_2 = 6
  end

  it '1' do
    expect(min_cost_climbing_stairs(@c1)).to eq(@out_1)
  end

  it '2' do
    expect(min_cost_climbing_stairs(@c2)).to eq(@out_2)
  end
end