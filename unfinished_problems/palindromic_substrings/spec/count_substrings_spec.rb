require 'rspec'
require './lib/count_substrings'

RSpec.describe 'count_substrings' do
  before :all do
    @s1 = 'abc'
    @out_1 = 3
  
    @s2 = 'aaa'
    @out_2 = 6
  end
  it '1' do
    expect(count_substrings(@s1)).to eq(@out_1)
  end

  it '2' do
    expect(count_substrings(@s2)).to eq(@out_2)
  end
  
end