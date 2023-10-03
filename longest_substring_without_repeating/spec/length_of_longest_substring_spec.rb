require './lib/length_of_longest_substring'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = "abcabcbb"
    @out_1 = 3

    @in_2 = "bbbbb"
    @out_2 = 1

    @in_3 = "aab"
    @out_3 = 2
  end

  it '1' do
    expect(length_of_longest_substring(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(length_of_longest_substring(@in_2)).to eq(@out_2)
  end

  it '3' do
    expect(length_of_longest_substring(@in_3)).to eq(@out_3)
  end
end