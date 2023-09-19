require './lib/two_sum'
require 'rspec'

describe 'example' do
  before :each do
    #[0,1]
    @nums_1 = [2,7,11,15]
    @target_1 = 9

    #[1,2]
    @nums_2 = [3,2,4]
    @target_2 = 6

    #[0,1]
    @nums_3 = [3,3]
    @target_3 = 6
  end

  it '1' do
    result = two_sum(@nums_1, @target_1)

    expect(result).to eq([0,1])
  end

  it '2' do
    result = two_sum(@nums_2, @target_2)

    expect(result).to eq([1,2])
  end

  it '3' do
    result = two_sum(@nums_3, @target_3)

    expect(result).to eq([0,1])
  end
end