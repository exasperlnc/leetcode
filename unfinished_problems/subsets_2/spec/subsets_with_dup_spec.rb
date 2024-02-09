require 'rspec'
require './lib/subsets_with_dup'

RSpec.describe 'subsets with dup' do
  before :all do
    @nums_1 = [1,2,2]
    @out_1 = [[],[1],[1,2],[1,2,2],[2],[2,2]]

    @nums_2 = [0]
    @out_2 = [[],[0]]
  end

  it '1' do
    expect(subsets_with_dup(@nums_1).sort).to eq(@out_1.sort)
  end

  it '2' do
    expect(subsets_with_dup(@nums_2).sort).to eq(@out_2.sort)
  end
end