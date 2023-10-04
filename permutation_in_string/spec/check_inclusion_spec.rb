require './lib/check_inclusion'
require 'rspec'

describe 'test_cases' do 
  before :each do
    @ins_1 = ["ab","eidbaooo"]
    
    @ins_2 = ["ab", "eidboaoo"]
  end
  it 'tests points_1' do
    result = check_inclusion(@ins_1[0], @ins_1[1])

    expect(result).to eq(true)
  end
  it 'tests_points_2' do
    result = check_inclusion(@ins_2[0], @ins_2[1])

    expect(result).to eq(false)
  end
end