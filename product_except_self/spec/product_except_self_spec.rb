require './lib/product_except_self'
require 'rspec'

describe 'example' do
  before :all do
    @nums_1 = [1,2,3,4]
    @out_1 = [24,12,8,6]

    @nums_2 = [-1,1,0,-3,3]
    @out_2 = [0,0,9,0,0]
  end

  it '1' do
    expect(product_except_self(@nums_1)).to eq(@out_1)
  end

  it '2' do
    expect(product_except_self(@nums_2)).to eq(@out_2)
  end
end