require 'rspec'
require './lib/climb_stairs'

RSpec.describe 'climbing stairs' do
  before :all do
    @n_1 = 2
    @out_1 = 2

    @n_2 = 3
    @out_2 = 3
  end

  it '1' do
    expect(climb_stairs(@n_1)).to eq(@out_1)
  end

  it '2' do
    expect(climb_stairs(@n_2)).to eq(@out_2)
  end
end