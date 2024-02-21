require 'rspec'
require './lib/rob'

RSpec.describe 'rob 2' do
  before :all do
    @n1 = [2,3,2]
    @out_1 = 3

    @n2 = [1,2,3,1]
    @out_2 = 4

    @n_3 = [200,3,140,20,10]
    @out_3 = 340
    end

    it '1' do
        expect(rob(@n1)).to eq(@out_1)
    end

    it '2' do
        expect(rob(@n2)).to eq(@out_2)
    end
    
    it '3' do
      expect(rob(@n_3)).to eq(@out_3)
    end
  end