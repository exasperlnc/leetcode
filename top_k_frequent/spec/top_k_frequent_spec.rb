require './lib/top_k_frequent'
require 'rspec'

describe 'example' do
  before :each do
    @n_1 = [1,1,1,2,2,3]
    @k_1 = 2
    @out_1 = [1,2]

    @n_2= [1]
    @k_2 = 1
    @out_2 = [1]
  end

  it '1' do
    expect(top_k_frequent(@n_1, @k_1)).to eq(@out_1)
  end

  it '2' do
    expect(top_k_frequent(@n_2, @k_2)).to eq(@out_2)
  end
end