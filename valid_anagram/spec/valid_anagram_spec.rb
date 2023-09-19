require './lib/valid_anagram'
require 'rspec'

describe 'example' do
  before :each do 
    # true
    @s_1 = "anagram"
    @t_1 = "naagram"

    #false
    @s_2 = "car"
    @t_2 = "rat"
  end

  it '1' do
   result = valid_anagram(@s_1, @t_1)
   
   expect(result).to eq(true)
  end

  it '2' do
    result = valid_anagram(@s_2, @t_2)

    expect(result).to eq(false)
  end
end