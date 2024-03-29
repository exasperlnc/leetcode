require 'rspec'
require './lib/permute'

RSpec.describe 'permute' do
  before :all do
    @nums_1 = [1,2,3]
    @out_1 = [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

    @nums_2 = [0,1]
    @out_2 = [[0,1],[1,0]]

    @nums_3 = [1]
    @out_3 = [[1]]
  end

  it '1' do
    expect(permute(@nums_1).sort).to eq(@out_1.sort)
  end

  it '2' do
    expect(permute(@nums_2).sort).to eq(@out_2.sort)
  end

  it '3' do
    expect(permute(@nums_3.sort)).to eq(@out_3.sort)
  end
end