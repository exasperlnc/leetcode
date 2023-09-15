require './lib/min_cost_connect_points'
require 'rspec'

describe 'test_cases' do 
  before :each do
    @points_1 = [[0,0],[2,2],[3,10],[5,2],[7,0]] #solution: 20
    @points_2 = [[3,12],[-2,5],[-4,1]] #solution: 18
  end
  it 'tests points_1' do
    result = min_cost_connect_points(@points_1)

    expect(result).to eq(20)
  end
  it 'tests_points_2' do
    result = min_cost_connect_points(@points_2)

    expect(result).to eq(18)
  end
end