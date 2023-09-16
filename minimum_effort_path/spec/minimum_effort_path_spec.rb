require './lib/minimum_effort_path'
require 'rspec'

describe 'test cases' do
  before :each do 
    @heights_1 = [[1,2,2],[3,8,2],[5,3,5]] # answer = 2
    @heights_2 = [[1,2,3],[3,8,4],[5,3,5]] # answer = 1
    @heights_3 = [[1,2,1,1,1],[1,2,1,2,1],[1,2,1,2,1],[1,2,1,2,1],[1,1,1,2,1]] # answer = 0
  end 
  it '1' do
    result = minimum_effort_path(@heights_1)

    expect(result).to eq(2)
  end
  
  it '2' do
    result = minimum_effort_path(@heights_2)
    
    expect(result).to eq(1)
  end

  it '3' do
    result = minimum_effort_path(@heights_3)

    expect(result).to eq(0)
  end
end