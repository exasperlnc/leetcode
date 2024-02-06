require 'rspec'
require './lib/partition'

RSpec.describe 'palindrome partitioning' do
  before :all do
    @s_1 = "aab"
    @out_1 = [["a","a","b"],["aa","b"]]

    @s_2 = "a"
    @out_2 [["a"]]
  end

  it '1' do
    expect(partition(@s_1)).to eq(@out_1)
  end

  it '2' do
    expect(partition(@s_2)).to eq(@out_2)
  end
end