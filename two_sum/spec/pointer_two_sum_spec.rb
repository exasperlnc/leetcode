require './lib/pointer_two_sum'
require 'rspec'

describe 'example' do
  before :all do
    #[0,1]
    @nums_1 = [2,7,11,15]
    @target_1 = 9

    #[1,2]
    @nums_2 = [2,3,4]
    @target_2 = 6

    #[0,1]
    @nums_3 = [-1,0]
    @target_3 = -1
  end

  it '1' do
    expect(pointer_two_sum(@nums_1, @target_1)).to eq([1,2])
  end

  it '2' do
    expect(pointer_two_sum(@nums_2, @target_2)).to eq([1,3])
  end

  it '3' do
    expect(pointer_two_sum(@nums_3, @target_3)).to eq([1,2])
  end
end