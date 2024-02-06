require './lib/subsets'
require 'rspec'

RSpec.describe 'subsets' do
  before :all do
    @nums_1 = [1,2,3]
    @out_1 =  [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

    @nums_2 = [0]
    @out_2 = [[],[0]]
  end

  it '1' do
    expect(subsets(@nums_1)).to eq(@out_1)
  end

  it '2' do
    expect(subsets(@nums_2)).to eq(@out_2)
  end
end