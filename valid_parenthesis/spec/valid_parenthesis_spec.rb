require './lib/valid_parenthesis'
require 'rspec'

describe 'example' do
  before :all do
    @in_1 = "()"
    @out_1 = true

    @in_2 = "()[]{}"
    @out_2 = true

    @in_3 = "(]"
    @out_3 = false

    @in_4 = "([)]"
    @out_4 = false
  end

  it '1' do
    expect(valid_parenthesis(@in_1)).to eq(@out_1)
  end

  it '2' do
    expect(valid_parenthesis(@in_2)).to eq(@out_2)
    
  end

  it '3' do
    expect(valid_parenthesis(@in_3)).to eq(@out_3)
  end

  it '4' do
    expect(valid_parenthesis(@in_4)).to eq(@out_4)
  end
end