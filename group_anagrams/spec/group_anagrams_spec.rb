require './lib/group_anagrams'
require 'rspec'

describe 'example' do
  before :each do
    @in_1 = ["eat","tea","tan","ate","nat","bat"]
    @out_1 = [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]

    @in_2 = [""]
    @out_2 = [[""]]

    @in_3 = ["a"]
    @out_3 = [["a"]]
  end

  it '1' do
    expect(group_anagrams(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(group_anagrams(@in_2)).to eq(@out_2)
  end

  it '3' do
    expect(group_anagrams(@in_3)).to eq(@out_3)
  end
end