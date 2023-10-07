require './lib/search_matrix'
require 'rspec'

describe 'example' do
  before :all do
    @matrix_1 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
    @target_1 = 3

    @matrix_2 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
    @target_2 = 13
  end

  it '1' do
    expect(search_matrix(@matrix_1, @target_1)).to eq(true)
  end

  it '2' do
    expect(search_matrix(@matrix_2, @target_2)).to eq(false)
  end
end