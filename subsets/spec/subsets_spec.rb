require 'rspec'
require './lib/subsets'

RSpec.describe 'examples' do 
  it '1' do
    nums = [1,2,3]

    expect(subsets(nums)).to eq([[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]])
  end

  it '2' do
    nums = [0]

    expect(subsets(nums)).to eq([[],[0]])
  end
end