require './lib/pointer_valid_palindrome'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = "A man, a plan, a canal: Panama"
    @out_1 = true

    @in_2 = "race a car"
    @out_2 = false

    @in_3 = " "
    @out_3 = true
  end

  it '1' do
    expect(pointer_valid_palindrome(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(pointer_valid_palindrome(@in_2)).to eq(@out_2)
  end

  it '3' do
    expect(pointer_valid_palindrome(@in_3)).to eq(@out_3)
  end
end