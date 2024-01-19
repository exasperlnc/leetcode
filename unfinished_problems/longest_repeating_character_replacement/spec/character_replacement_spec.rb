require 'rspec'
require './lib/character_replacement'

RSpec.describe 'character replacement' do
  before :all do
    @s1 = "ABAB"
    @k1 = 2
    @out1 = 4

    @s2 = "AABABBA"
    @k2 = 1
    @out2 = 4
  end

  it '1' do
    expect(character_replacement(@s1, @k1)).to eq(@out1)
  end

  it '2' do
    expect(character_replacement(@s2, @k2)).to eq(@out2)
  end
end